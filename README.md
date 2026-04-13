# github-commiter

Automatically commits a random motivational quote to this repo every day via GitHub Actions, keeping the contribution graph green.

## Setup

1. Create a new repo on GitHub (e.g. `github-commiter`)
2. Push this project:
   ```
   git remote add origin git@github.com:JeyoungJung/github-commiter.git
   git add -A
   git commit -m "initial commit"
   git push -u origin main
   ```
3. Go to your repo **Settings > Actions > General** and ensure:
   - **Actions permissions**: "Allow all actions and reusable workflows"
   - **Workflow permissions**: "Read and write permissions"
4. That's it. The action runs daily at 12:00 UTC. You can also trigger it manually from the **Actions** tab.

## How it works

- `.github/workflows/daily-commit.yml` runs on a daily cron schedule
- `commit.sh` picks a random quote from `quotes.json` and appends it to `QUOTES.md`
- The workflow commits and pushes the change

## Manual trigger

Go to **Actions > Daily Green Square > Run workflow** to trigger immediately.
