git clone git@github.com:cmliu/edgetunnel.git

last_commit=$(git log -1 --format=%cd --date=unix)

current_time=$(date +%s)

time_difference=$(( (current_time - last_commit) / 3600 ))

if [ $time_difference -lt 1 ]; then
    npx wrangler pages deploy --project-name vless ./edgetunnel
fi

