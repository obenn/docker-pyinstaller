from itertools import chain, combinations, permutations
done_tags = {
    'linux': [],
    'windows': [],
}
arch_to_bits = {
    'amd64': '64bit',
    'win64': '64bit',
    'i386': '32bit',
    'win32': '32bit',
}
pyinstaller_version='3.6'

def powerset(iterable):
    s = list(iterable)
    return chain.from_iterable(combinations(s, r) for r in range(len(s)+1))

with open("build.sh", 'w+') as f:
    for line in open('releases.txt', 'r'):
        python_version, os_family, arch, ubuntu_distro = line.strip().split()
        bits = arch_to_bits[arch]
        f.write(f"docker build -f Dockerfile-py{python_version[0]}-{ubuntu_distro}-{arch} \\\n")
        f.write(f"--build-arg PYTHON_VERSION={python_version} \\\n")
        f.write(f"--build-arg PYINSTALLER_VERSION={pyinstaller_version} \\\n")
        tags = []
        variants = [
            bits,
            ubuntu_distro,
        ]
        python_prefixes = [
            'python' + '.'.join(python_version.split('.')[:1]),
            'python' + '.'.join(python_version.split('.')[:2]),
            'python' + '.'.join(python_version.split('.')[:3]),
        ]
        tags += variants
        tags += python_prefixes
        for tag_subset in powerset(variants):
            for tag_permutation in permutations(tag_subset):
                if tag_permutation:
                    for python_prefix in python_prefixes:
                        tags.append(python_prefix + '-' + '-'.join(tag_permutation))

        tags.append('latest')

        for tag in tags:
            if tag not in done_tags[os_family]:
                f.write(f"--tag pyinstaller-{os_family}:{tag} \\\n")
                done_tags[os_family].append(tag)
        f.write('.\n')
