# Contributing to SIBAD

Terima kasih atas minat Anda untuk berkontribusi pada SIBAD Tournament Management System! 🎉

## 📋 Daftar Isi

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [Development Workflow](#development-workflow)
- [Coding Standards](#coding-standards)
- [Submitting Changes](#submitting-changes)
- [Reporting Issues](#reporting-issues)

## Code of Conduct

Proyek ini mengikuti [Contributor Covenant Code of Conduct](https://www.contributor-covenant.org/). Dengan berpartisipasi, Anda diharapkan untuk mematuhi kode etik ini.

## Getting Started

### Prerequisites

- Git
- Web browser modern
- Python 3.x (untuk local server)
- Text editor atau IDE

### Setup Development Environment

1. **Fork repository**
```bash
# Klik tombol "Fork" di GitHub
```

2. **Clone your fork**
```bash
git clone https://github.com/YOUR-USERNAME/SIBAD.git
cd SIBAD
```

3. **Set up upstream**
```bash
git remote add upstream https://github.com/ORIGINAL-OWNER/SIBAD.git
```

4. **Run development server**
```bash
python -m http.server 8080
```

5. **Open in browser**
```
http://localhost:8080
```

## Development Workflow

### 1. Create Feature Branch
```bash
git checkout -b feature/your-feature-name
```

### 2. Make Changes
- Edit `index.html` untuk perubahan aplikasi
- Test perubahan secara lokal
- Ensure responsive design
- Validate Indonesian translations

### 3. Test Your Changes
- ✅ Test di multiple browsers
- ✅ Test responsive design
- ✅ Test storage functionality
- ✅ Test all CRUD operations
- ✅ Validate data persistence

### 4. Commit Changes
```bash
git add .
git commit -m "feat: add your feature description"
```

### 5. Push and Create PR
```bash
git push origin feature/your-feature-name
```

## Coding Standards

### HTML Structure
```html
<!-- Use semantic HTML5 elements -->
<section class="...">
  <header class="...">
    <h2 class="...">Section Title</h2>
  </header>
  <div class="...">
    <!-- Content -->
  </div>
</section>
```

### CSS Classes (Tailwind)
```html
<!-- Use consistent spacing and naming -->
<div class="bg-white rounded-xl shadow-sm p-6 mb-4">
  <button class="bg-blue-600 hover:bg-blue-700 text-white px-4 py-2 rounded-lg">
    Action Button
  </button>
</div>
```

### JavaScript Style
```javascript
// Use camelCase for functions and variables
function loadTournamentData() {
    const playerData = getData('players');
    
    // Use const/let, avoid var
    const processedData = playerData.map(player => ({
        ...player,
        processed: true
    }));
    
    return processedData;
}

// Use descriptive names
function calculatePlayerStrength(wins, losses, averageScore) {
    return (wins * 10) + (averageScore * 0.5) - (losses * 2);
}
```

### Indonesian Localization
```javascript
// All user-facing text should be in Indonesian
const messages = {
    success: 'Data berhasil disimpan!',
    error: 'Terjadi kesalahan saat menyimpan data',
    confirm: 'Apakah Anda yakin ingin menghapus data ini?'
};
```

## Submitting Changes

### Pull Request Guidelines

1. **Title**: Use descriptive title
   ```
   feat: add player export functionality
   fix: resolve storage data corruption issue
   docs: update README installation steps
   ```

2. **Description**: Include
   - What changes were made
   - Why the changes were necessary
   - Screenshots (if UI changes)
   - Testing performed

3. **Checklist**
   - [ ] Code follows project style guidelines
   - [ ] Self-review performed
   - [ ] Tested in multiple browsers
   - [ ] Documentation updated if needed
   - [ ] No breaking changes (or clearly documented)

### Commit Message Format
```
type(scope): description

[optional body]

[optional footer]
```

**Types:**
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation
- `style`: Formatting, missing semi colons, etc
- `refactor`: Code restructuring
- `test`: Adding tests
- `chore`: Maintenance

**Examples:**
```
feat(player): add bulk import functionality
fix(storage): resolve data persistence issue
docs(readme): update installation instructions
```

## Reporting Issues

### Bug Reports
Include:
- **Description**: Clear description of the bug
- **Steps to Reproduce**: Numbered steps
- **Expected Behavior**: What should happen
- **Actual Behavior**: What actually happens
- **Environment**: Browser, OS, version
- **Screenshots**: If applicable

### Feature Requests
Include:
- **Problem**: What problem would this solve?
- **Solution**: Describe your proposed solution
- **Alternatives**: Other solutions considered
- **Use Case**: How would you use this feature?

## Development Tips

### Local Testing
```bash
# Test different browsers
python -m http.server 8080  # Chrome, Firefox, Safari, Edge

# Test mobile responsiveness
# Use browser dev tools device simulation
```

### Data Testing
```javascript
// Test with different data sizes
const testData = {
    small: 4,    // 4 players
    medium: 16,  // 16 players (default)
    large: 32    // 32 players (stress test)
};
```

### Storage Testing
```javascript
// Test storage limits
localStorage.clear();  // Clean start
// Add large amounts of data
// Test auto-cleanup
// Test export/import
```

## Community

### Getting Help
- 📫 **Issues**: [GitHub Issues](https://github.com/[username]/SIBAD/issues)
- 💬 **Discussions**: [GitHub Discussions](https://github.com/[username]/SIBAD/discussions)

### Recognition
Contributors akan diakui di:
- README.md acknowledgments
- Release notes
- Project contributors page

---

**Terima kasih telah berkontribusi pada SIBAD! 🏸**
