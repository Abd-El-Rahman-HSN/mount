    set :application, "mountion"
    set :repo_url, "git@github.com:Abd-El-Rahman-HSN/mount.git"

    set :deploy_to, '/home/deploy/app/mount'

    append :linked_files, "config/database.yml"
    append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"