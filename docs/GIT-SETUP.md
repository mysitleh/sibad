# 🚀 Git Setup Commands

## Inisialisasi Repository Baru

```bash
# Inisialisasi git repository
git init

# Tambahkan semua file
git add .

# Commit pertama
git commit -m "feat: initial commit - SIBAD Tournament Management System v1.0.0

- Complete player management system with CRUD operations
- Tournament bracket generation with balanced pairing
- Financial management with custom expenses
- Advanced 5-day storage system with auto-save
- Indonesian localization and responsive design
- Comprehensive documentation and contribution guidelines"

# Tambahkan remote repository (ganti dengan URL repository Anda)
git remote add origin https://github.com/YOUR-USERNAME/SIBAD.git

# Push ke GitHub
git branch -M main
git push -u origin main
```

## Setup Repository yang Sudah Ada

```bash
# Clone repository
git clone https://github.com/YOUR-USERNAME/SIBAD.git
cd SIBAD

# Jalankan aplikasi
python -m http.server 8080
```

## Git Workflow untuk Development

```bash
# Update dari main branch
git checkout main
git pull origin main

# Buat feature branch
git checkout -b feature/nama-fitur

# Lakukan perubahan dan commit
git add .
git commit -m "feat: deskripsi fitur baru"

# Push feature branch
git push origin feature/nama-fitur

# Buat Pull Request di GitHub
# Setelah merge, cleanup
git checkout main
git pull origin main
git branch -d feature/nama-fitur
```

## Useful Git Commands

```bash
# Check status
git status

# Check history
git log --oneline

# Undo last commit (keep changes)
git reset --soft HEAD~1

# Undo all uncommitted changes
git checkout .

# Update .gitignore setelah commit
git rm -r --cached .
git add .
git commit -m "fix: update gitignore"
```

---

**Happy coding! 🎯**
