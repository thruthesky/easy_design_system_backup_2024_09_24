{{flutter_js}}
{{flutter_build_config}}


const loadingMessage = document.querySelector('#loading-message');
loadingMessage.textContent = "Downloading flutter engine...";
console.log("-> Loading flutter engine...");
_flutter.loader.load({
    serviceWorkerVersion: {{flutter_service_worker_version}},
    onEntrypointLoaded: async function (engineInitializer) {
        
        console.log("-> Engin is downloaded now. Going to initialize it.");
    loadingMessage.textContent = "Engin is downloaded now. Going to initialize it.";
    const appRunner = await engineInitializer.initializeEngine();

        console.log("-> Engin is initialized. Booting the flutter app.");
    loadingMessage.textContent = "Engin is initialized. Booting the flutter app.";
        
           await appRunner.runApp();
  }
});
