clean:
    rm -r css-dist || true

setup:
    npm install

build: setup clean
    mkdir css-dist
    npx css-minify -f residue.css
    gzip -k css-dist/residue.min.css
