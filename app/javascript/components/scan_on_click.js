import { scanFunc } from '../packs/rails-qr-code-reader.js'; //Allows scanning on click
const initScanOnClick = () => {
    $("#click-scan").click(function() {
      scanFunc(); 
  });
}

export { initScanOnClick };