const fs = require('fs');
const path = require('path');

const assetlinksPath = path.join(__dirname, 'build/web/.well-known/assetlinks.json');

// Your additional SHA certificates
const additionalSHAs = [
  "A3:CD:48:EE:6D:95:FE:B4:0F:25:98:3E:C4:8C:CD:FA:00:27:D4:D2:15:06:8B:A5:BC:28:C4:26:5A:2A:B4:E6"
];

function updateAssetlinks() {
  if (fs.existsSync(assetlinksPath)) {
    const assetlinks = JSON.parse(fs.readFileSync(assetlinksPath, 'utf8'));

    // Find the Android app entry
    const androidEntry = assetlinks.find(entry =>
      entry.target && entry.target.namespace === 'android_app'
    );

    if (androidEntry) {
      // Add your additional SHAs
      const existingSHAs = androidEntry.target.sha256_cert_fingerprints || [];
      const allSHAs = [...new Set([...existingSHAs, ...additionalSHAs])];
      androidEntry.target.sha256_cert_fingerprints = allSHAs;

      // Write back to file
      fs.writeFileSync(assetlinksPath, JSON.stringify(assetlinks, null, 2));
      console.log('✅ Updated assetlinks.json with additional SHAs');
    }
  }
}

updateAssetlinks();