'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".dart_tool/dartpad/web_plugin_registrant.dart": "7ed35bc85b7658d113371ffc24d07117",
".dart_tool/package_config.json": "8f6c6f34149013ccc0ed00e29347869a",
".dart_tool/package_config_subset": "f987d19676960308c88154720d4eacda",
".dart_tool/version": "4fbe56a1e692c4eb026a83a581b47de1",
".idea/libraries/Dart_SDK.xml": "b1c063a4e609ba87bc7c7200be8b0e78",
".idea/libraries/KotlinJavaRuntime.xml": "de38cfadca3106f8aff5ab15dd81692f",
".idea/modules.xml": "912eed95a3e3c24c60d8255d101fa03c",
".idea/php.xml": "4a81af6f454c43fa2f45f94dcaa6785c",
".idea/runConfigurations/main_dart.xml": "0ecf958af289efc3fc1927aa27a8442f",
".idea/workspace.xml": "4929d9e8080496af22606951e385b719",
".well-known/assetlinks.json": "d9098e09e5d4427995444134a99ba696",
"analysis_options.yaml": "9e65f4b9beebb674c0dc252f70a5c177",
"assets/AssetManifest.bin": "80c0416cd2eeb12c222150334bd43d8a",
"assets/AssetManifest.bin.json": "61fa4a3aa62609947892de4fabcb4a1e",
"assets/AssetManifest.json": "4aeef3bab1fe13b5f11edaec805c4279",
"assets/assets/app_logo.svg": "9ed2dd3c4f101e23777fa9dcfea21295",
"assets/assets/app_logo_horizontal.svg": "047a5951eadbbfd8796b65cee2b458bd",
"assets/assets/fonts/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/fonts/Poppins-SemiBold.ttf": "6f1520d107205975713ba09df778f93f",
"assets/assets/fonts/Roboto-Medium.ttf": "68ea4734cf86bd544650aee05137d7bb",
"assets/assets/fonts/Roboto-Regular.ttf": "8a36205bd9b83e03af0591a004bc97f4",
"assets/assets/fonts/RobotoCondensed-Regular.ttf": "0134dd8fe6fe708de73909a71d842780",
"assets/assets/icons/arrow-left.svg": "e5fd8aabf673d166b7cd6a4813f5b979",
"assets/assets/icons/arrow-right.svg": "5c3462adc67eac91be5fc24bbb28cd96",
"assets/assets/icons/arrow-up.svg": "59f14949dfa5f99bfabaf583261d8cb4",
"assets/assets/icons/bullet-list.svg": "038b8b52493f69409d8ee4973bd473ae",
"assets/assets/icons/calendar.svg": "9f42f273d37d46177688529321f86373",
"assets/assets/icons/chat-bubble.svg": "39416d4bd905c47b04dc2b44e81bcc17",
"assets/assets/icons/copy-link.svg": "adf7cba5cd007d1d1f223f369d1d9055",
"assets/assets/icons/double-arrow-right.svg": "5b1becc90abcf246913eb1c62a0c5002",
"assets/assets/icons/favourite.svg": "97e5d7d4f965a9a2594999c78c99cd84",
"assets/assets/icons/filter-vertical.svg": "533de649e985c66ba0c459d155a18cdf",
"assets/assets/icons/home.svg": "30f270014886757c7e6af2758aa1ef43",
"assets/assets/icons/line_vertical.svg": "cad7c673d8e77333617e3f6f694079ec",
"assets/assets/icons/link-square.svg": "f0d25be6fc6e96468d2a9066c99257d2",
"assets/assets/icons/more-horizontal.svg": "748c4b8ffa64ef934ce28156e065746c",
"assets/assets/icons/next-button.svg": "0237a01f693e9a62849b29e20feb2c22",
"assets/assets/icons/open-link2.svg": "176bda2333fd48060a2610f4601ffab7",
"assets/assets/icons/search-small.svg": "09d6ae812d4c21c783d1bf6605d468f2",
"assets/assets/icons/search.svg": "918d2ab74f82bf6053b0a29c6fb54ff8",
"assets/assets/icons/star.svg": "41ed5f6ff64829614dbb7efc41e699fb",
"assets/assets/icons/thumbs-up.svg": "a20ab7d5348dc83dbf1c1cdbc8eff1a4",
"assets/assets/icons/user-group.svg": "93cc0c63aed2a8c48dafae68fc567e50",
"assets/assets/icons/view-slider.svg": "781b1c6a8cce3524ddb4d55ed84bf666",
"assets/assets/images/on_boarding/on_boarding_1.png": "3ef46ba5d3e5746a7d91a4e068154642",
"assets/assets/images/on_boarding/on_boarding_2.png": "f7588410fccf322ae28cf54e325661c5",
"assets/assets/images/on_boarding/on_boarding_3.png": "8874c1f65182852e8db663280d6d7b1d",
"assets/assets/images/on_boarding/on_boarding_4.png": "5d478281803c350581e9910e48f28140",
"assets/assets/images/placeholders/100x147.png": "2822b778cbef43943d9b8eca8bf6f8d1",
"assets/assets/images/placeholders/110x162.png": "a6d25f04386ab526216206795c22cbd9",
"assets/assets/images/placeholders/115x169.png": "649b8954ead0f75a4e8135ef1cefa2a8",
"assets/assets/images/placeholders/210x310.png": "4e8b39604577ac45a263b51f6c59e678",
"assets/assets/images/placeholders/340x72.png": "1f681c4b10b9ac71174795f3acbb2730",
"assets/assets/images/placeholders/85x120.png": "1ab97f134bb0c023b4ebcb65cbe049f1",
"assets/assets/my_refresh_indicator/forest.png": "02e5aa102d311d7660087b9c9dd66888",
"assets/assets/my_refresh_indicator/full_moon.svg": "6b981591b3b935818d7983a930cad562",
"assets/assets/my_refresh_indicator/meteorite1.svg": "25c34d4a31cfc977a6fda3d4572028f0",
"assets/assets/my_refresh_indicator/meteorite2.svg": "0ec0c2733bcdf05a3e5122ed5b1d259f",
"assets/assets/my_refresh_indicator/meteorite3.svg": "6566d44db38b5fc33cb8a9f449380e01",
"assets/assets/my_refresh_indicator/moon_logo_after.svg": "b727c37b20b491c039427fbc10ae134e",
"assets/assets/my_refresh_indicator/moon_logo_before.svg": "e3b3e5ca6bbce0f974f0774ea0e78562",
"assets/assets/my_refresh_indicator/sky.png": "1bed74c855e5153c79e6a3ac84545a2d",
"assets/assets/my_refresh_indicator/star_group.png": "dfd21c45386fe93f72b90e7a36b14613",
"assets/FontManifest.json": "ddbfb05fdd6dfa8f184e6924d1c3b946",
"assets/fonts/MaterialIcons-Regular.otf": "05796eff55edb457625dcc723a7d75df",
"assets/NOTICES": "d3cfc42d500e73b3f9688dafb80701b9",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/media_kit/assets/web/hls1.4.10.js": "1e36f4683b03af6692ad2542810f28bc",
"assets/packages/wakelock_plus/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"build/web/index.html": "383f583cd97dcd80426442abcd359339",
"/": "0e2defc194c2996e4feb4a393b6ea9c9",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"firebase.json": "e4ceac0cff549be44a0575a12b53d7e7",
"flutter.js": "59a12ab9d00ae8f8096fffc417b6e84f",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "42b69052b2db778f32b9341e2e4eb16e",
"lib/main.dart": "d8621d84413b0f1b1eeb5df51af935a1",
"main.dart.js": "3a1f40a3e121710eb818eb9ba80e2dd4",
"manifest.json": "a53199233637a5160de95be6221f4ce3",
"otaku_world_8a7f4.iml": "f9bf5c490675c84d098e6772a6f2a796",
"pubspec.lock": "ae367fb219773002f8ed9bb7dd8907d5",
"pubspec.yaml": "b01b14461f3f7991a9581f3c075e94ca",
"README.md": "0367c28c2f1163e9230488fa86056149",
"test/widget_test.dart": "0776cadafe7b6fe9e71bd213bdac48bd",
"version.json": "a6f150f2763114f40e02f24dfbcc2592",
"web/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"web/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"web/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"web/icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"web/icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"web/index.html": "0e2defc194c2996e4feb4a393b6ea9c9",
"web/manifest.json": "ac46e4df20ebe266aae5128f86e9106e"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
