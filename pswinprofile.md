# Windows PowerShell Prompt formatting

```powershell
# How to add to your ps profile
# edit you ps profile via
# nvim $profile # or
# code $profile
# and add the following

function prompt {
  $basename = Split-Path -Path (Get-Location) -Leaf

  # Check if in a git repository
  $gitRepo = try {
    git rev-parse --is-inside-work-tree 2>$null
  } catch {
    $null
  }

  if ($gitRepo -eq "true") {
    # Get the current branch
    $branch = try {
      git branch --show-current 2>$null
    } catch {
      $null
    }

    if ($branch) {
      "$basename (git:$branch)> "
    } else {
      "$basename> " # In git repo, but no branch
    }
  } else {
    "$basename> " # Not in git repo
  }
}
```
