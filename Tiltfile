local_resource(
    'nestjs-tilt-poc-compile',
    cmd='npm run build',
    deps=[
        './src',
        './package.json',
        './package-lock.json'
    ],
    labels=['nestjs-tilt-poc']
)

docker_build(
    'nestjs-tilt-poc',
    '.',
    only=[
        'node_modules',
        'src',
        'package.json',
        'package-lock.json',
        'tsconfig.json',
        'tsconfig.build.json',
        'nest-cli.json',
    ],
    live_update=[
        sync('./dist', '/dist'),
    ]
)

k8s_yaml('kubernetes.yaml')

k8s_resource(
    'nestjs-tilt-poc',
    port_forwards='3000:3000',
    labels=['nestjs-tilt-poc'],
)
