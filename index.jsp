<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang="zh-CN">


<head>
    <meta charset="UTF-8">
    <title>3D地图展示</title>
    <!-- 引入Three.js库（r110版本） -->
    <script src="https://unpkg.com/three@0.110.0/build/three.min.js"></script>
    <!-- 引入OrbitControls（通过 unpkg.com） -->
    <script src="https://unpkg.com/three@0.110.0/examples/js/controls/OrbitControls.js"></script>
    <!-- 引入d3-geo库 -->
    <script src="https://d3js.org/d3-geo.v1.min.js"></script>
    <!-- 引入样式 -->
    <link rel="stylesheet" href="css/style.css">
</head>


<body>

    <div class="container" id="container" onmousemove="onMouseMove(event)" style="width: 100%; height: 100%; background-color: #000808; overflow: hidden; position: relative;">
        <div class="switch" onclick="toggleMainPage()" style="position: absolute; top: 40px; right: 20px; z-index: 999; cursor: pointer;">
            <svg width="32" height="32" viewBox="0 0 1024 1024" fill="#00c6c6">
                <path d="M512 85.333333l426.666667 426.666667-426.666667 426.666667L85.333333 512z"></path>
            </svg>
        </div>
        <div class="topBox" id="topBox" style="position: absolute; top: 0; width: 100%; height: 80px; z-index: 2; transform: translateY(-80px); transition: transform 0.6s;">
            <img src="index/topBg.png" alt="" class="topBg" style="width: 100%; height: 61px;"/>
            <img src="index/shine.png" alt="" class="shine" style="position: absolute; top: 51px; left: 0; right: 0; width: 808px; height: 55px; margin: 0 auto;"/>
            <div class="leftLine" style="position: absolute; top: 18px; width: 120px; height: 4px; border-radius: 2px; background-image: linear-gradient(to left, #b5eff6, #008f8f, #003d3d); left: 4%;"></div>
            <div class="rightLine" style="position: absolute; top: 18px; width: 120px; height: 4px; border-radius: 2px; background-image: linear-gradient(to right, #b5eff6, #008f8f, #003d3d); right: 4%;"></div>
            <div class="title" style="position: absolute; top: 16px; left: 0; right: 0; width: 100%; display: flex; align-items: center; justify-content: center;">
                <span style="text-align: center; font-size: 32px; font-weight: 600; background-image: linear-gradient(to right, #003d3d, #008f8f, #00cfcf, #008f8f, #003d3d); -webkit-background-clip: text; color: transparent;">中国文化与旅游</span>
            </div>
        </div>
        <div class="leftBox" id="leftBox" style="position: absolute; top: 80px; width: 30%; height: calc(100% - 80px); z-index: 2; transition: transform 0.8s; left: -2%;"> <!-- 整体右移 -->
            <div class="item" style="width: 100%; height: 40%; padding: 20px;">
                <div class="border1" style="padding: 20px; background: rgba(0, 128, 64, 0.3); border-radius: 12px; border: 2px solid rgba(98, 112, 205, 0.7); height: 100%; margin-left: 10px;"> <!-- 边框右移 -->
                    <div class="title" style="font-size: 18px; color: #00ff80; font-weight: bold; text-align: center; margin-bottom: 10px;">文化遗产</div>
                    <div class="content" style="font-size: 16px; color: #ccffcc; line-height: 1.8; text-align: justify;">
                        中国拥有悠久的历史文化，长城、故宫和敦煌莫高窟等世界遗产以其独特的风貌吸引着全球游客。<br><br>
                        中国文化以儒家思想为核心，同时融合了道家、佛教等哲学精髓。在每一个文化遗址中，您都能感受到中华文明的悠久与辉煌。
                    </div>
                </div>
            </div>
            <div class="item" style="width: 100%; height: 60%; padding: 20px;">
                <div class="border1" style="padding: 20px; background: rgba(0, 128, 64, 0.3); border-radius: 12px; border: 2px solid rgba(98, 112, 205, 0.7); height: 100%; margin-left: 10px;"> <!-- 边框右移 -->
                    <div class="content" style="font-size: 16px; color: #ccffcc; line-height: 1.8; text-align: justify;">
                        近年来，中国通过“一带一路”倡议加强文化交流，推动文化输出。影视作品、非物质文化遗产的复兴，让世界更加了解中国文化。<br><br>
                        北京的故宫、南京的中华门、洛阳的龙门石窟等历史文化名城展现了中国厚重的历史底蕴。
                    </div>
                </div>
            </div>
        </div>
        <div class="rightBox" id="rightBox" style="position: absolute; top: 80px; width: 30%; height: calc(100% - 80px); z-index: 2; transition: transform 0.8s; right: 0.5%">
            <div class="item" style="width: 100%; height: 40%; padding: 20px;">
                <div class="border1" style="padding: 20px; background: rgba(0, 128, 64, 0.3); border-radius: 12px; border: 2px solid rgba(98, 112, 205, 0.7); height: 100%;">
                    <div class="title" style="font-size: 18px; color: #00ff80; font-weight: bold; text-align: center; margin-bottom: 10px;">现代发展</div>
                    <div class="content" style="font-size: 16px; color: #ccffcc; line-height: 1.8; text-align: justify;">
                        中国的现代化发展令人瞩目。上海的陆家嘴、深圳的科技中心，以及覆盖全国的高铁网络，展示了一个充满活力的现代中国。<br><br>
                        游览这些现代化城市，您能看到科技与文化完美融合的魅力。
                    </div>
                </div>
            </div>
            <div class="item" style="width: 100%; height: 60%; padding: 20px;">
                <div class="border1" style="padding: 20px; background: rgba(0, 128, 64, 0.3); border-radius: 12px; border: 2px solid rgba(98, 112, 205, 0.7); height: 100%;">
                    <div class="content" style="font-size: 16px; color: #ccffcc; line-height: 1.8; text-align: justify;">
                        从桂林的漓江到杭州的西湖，再到成都的美食文化，您将感受到自然与人文的完美结合。<br><br>
                        中国丰富的山水美景和繁荣的现代城市共同打造了一个理想的旅游胜地。
                    </div>
                </div>
            </div>
        </div>
        <div class="tooltip" id="tooltip" style="position: absolute; padding: 10px 20px; font-size: 16px; font-weight: 600; color: #000; background-color: #ffffff; border-radius: 4px; visibility: hidden; z-index: 3;">
        </div>
    </div>
    
        

        

<script>
    // 定义变量
    const cameraInitialPosition = {x: 0, y: -20, z: 80}; // 相机初始位置
    const mapInitialPosition = {x: 0, y: 6, z: 0}; // 地图初始位置
    const mapThickness = 6; // 地图板块厚度
    const mapDefaultColor = "#008170"; // 地图默认颜色
    const mapEdgeColor = "#1AACAC"; // 地图侧面颜色
    const mapHoverColor = "#005B41"; // hover后的地图颜色

    let scene, camera, renderer;
    let controls;
    let raycaster = new THREE.Raycaster(); // 射线对象
    let mouse = new THREE.Vector2();
    let chinaMap; // 3D地图对象
    let lastIntersected = null;
    let isMainPageVisible = true;

    // 新增变量：定义圆环对象
    let ring1, ring2;

    // 定义需要跳转的省份和对应的页面
    const provinceToPage = {
        "北京市": "page1.jsp",
        "上海市": "page2.jsp",
        "四川省": "page3.jsp",
        "云南省": "page4.jsp"
    };

    // 为指定的省份定义特殊的颜色
    const provinceColors = {
        "北京市": "#33A1FF",  // 蓝色
        "上海市": "#33A1FF",  // 蓝色
        "四川省": "#33A1FF",  // 蓝色
        "云南省": "#33A1FF"   // 蓝色
    };

    function init() {
        const container = document.getElementById('container');

        // 创建场景
        scene = new THREE.Scene();

        // 创建相机
        camera = new THREE.PerspectiveCamera(75, window.innerWidth / window.innerHeight, 0.1, 1000);
        camera.position.set(cameraInitialPosition.x, cameraInitialPosition.y, cameraInitialPosition.z);

        // 创建渲染器
        renderer = new THREE.WebGLRenderer({antialias: true});
        renderer.setSize(window.innerWidth, window.innerHeight);
        container.appendChild(renderer.domElement);

        // 控制器
        controls = new THREE.OrbitControls(camera, renderer.domElement);

        // 添加背景图
        const textureLoader = new THREE.TextureLoader();
        textureLoader.load('index/pageBg.png', function (texture) {
            scene.background = texture;
        });

        // 加载地图数据
        loadMapData();

        // 添加圆环
        addRings();

        // 监听窗口大小变化
        window.addEventListener('resize', onWindowResize, false);

        // 添加鼠标点击事件监听器
        container.addEventListener('click', onMouseClick, false);

        // 开始动画循环
        animate();
    }

    function loadMapData() {
        const loader = new THREE.FileLoader();
        loader.load('index/ChinaMap.json', function (data) {
            const jsonData = JSON.parse(data);
            createMap(jsonData);
        });
    }

    function createMap(data) {
        chinaMap = new THREE.Object3D();
        const projection = d3.geoMercator()
            .center([104.0, 37.5])
            .scale(80)
            .translate([0, 0]);

        data.features.forEach(function (feature) {
            const province = new THREE.Object3D();
            const coordinates = feature.geometry.coordinates;
            coordinates.forEach(function (multiPolygon) {
                multiPolygon.forEach(function (polygon) {
                    const shape = new THREE.Shape();
                    const pointsArray = [];
                    for (let i = 0; i < polygon.length; i++) {
                        const [x, y] = projection(polygon[i]);
                        if (i === 0) {
                            shape.moveTo(x, -y);
                        } else {
                            shape.lineTo(x, -y);
                        }
                        pointsArray.push(new THREE.Vector3(x, -y, mapThickness));
                    }
                    const lineGeometry = new THREE.BufferGeometry().setFromPoints(pointsArray);

                    const extrudeSettings = {
                        depth: mapThickness,
                        bevelEnabled: false
                    };
                    const geometry = new THREE.ExtrudeGeometry(shape, extrudeSettings);

                    // 根据省份名称设置颜色
                    let provinceColor = mapDefaultColor;
                    if (provinceColors[feature.properties.name]) {
                        provinceColor = provinceColors[feature.properties.name];
                    }

                    const materialTop = new THREE.MeshBasicMaterial({
                        color: provinceColor,
                        transparent: true,
                        opacity: 0.92
                    });
                    const materialSide = new THREE.MeshBasicMaterial({
                        color: mapEdgeColor,
                        transparent: true,
                        opacity: 0.92
                    });

                    const mesh = new THREE.Mesh(geometry, [materialTop, materialSide]);
                    const lineMaterial = new THREE.LineBasicMaterial({color: "white"});
                    const line = new THREE.Line(lineGeometry, lineMaterial);

                    province.properties = feature.properties;
                    province.add(mesh);
                    province.add(line);

                    // 如果是需要跳转的省份，给mesh添加userData
                    if (provinceToPage[feature.properties.name]) {
                        mesh.userData.url = provinceToPage[feature.properties.name];
                        // 可选：改变鼠标样式
                        mesh.cursor = 'pointer';
                    }
                });
            });
            chinaMap.add(province);
        });

        chinaMap.position.set(mapInitialPosition.x, mapInitialPosition.y, mapInitialPosition.z);
        scene.add(chinaMap);
    }

    // 新增函数：添加旋转圆环
    function addRings() {
        // 创建第一个圆环
        const ringGeometry1 = new THREE.RingGeometry(60, 62, 64);
        const ringMaterial1 = new THREE.MeshBasicMaterial({
            color: 0x00ffff,
            side: THREE.DoubleSide,
            transparent: true,
            opacity: 0.5
        });
        ring1 = new THREE.Mesh(ringGeometry1, ringMaterial1);
        ring1.rotation.x = -Math.PI / 2;
        ring1.position.y = -5; // 根据需要调整位置
        scene.add(ring1);

        // 创建第二个圆环
        const ringGeometry2 = new THREE.RingGeometry(65, 67, 64);
        const ringMaterial2 = new THREE.MeshBasicMaterial({
            color: 0x00ffff,
            side: THREE.DoubleSide,
            transparent: true,
            opacity: 0.3
        });
        ring2 = new THREE.Mesh(ringGeometry2, ringMaterial2);
        ring2.rotation.x = -Math.PI / 2;
        ring2.position.y = -5; // 根据需要调整位置
        scene.add(ring2);
    }

    function onMouseMove(event) {
        const container = document.getElementById('container');
        const tooltip = document.getElementById('tooltip');
        const rect = container.getBoundingClientRect();

        mouse.x = ((event.clientX - rect.left) / container.clientWidth) * 2 - 1;
        mouse.y = -((event.clientY - rect.top) / container.clientHeight) * 2 + 1;

        if (tooltip) {
            tooltip.style.left = (event.clientX - rect.left + 4) + 'px';
            tooltip.style.top = (event.clientY - rect.top + 4) + 'px';
        }
    }

    function onMouseClick(event) {
        if (lastIntersected && lastIntersected.object.userData.url) {
            window.location.href = lastIntersected.object.userData.url;
        }
    }

    function animate() {
        requestAnimationFrame(animate);

        // 旋转圆环
        if (ring1 && ring2) {
            ring1.rotation.z += 0.005;
            ring2.rotation.z -= 0.005;
        }

        // 更新射线
        if (chinaMap) {
            if (lastIntersected) {
                // 恢复省份的颜色
                let provinceName = lastIntersected.object.parent.properties.name;
                let provinceColor = mapDefaultColor;
                if (provinceColors[provinceName]) {
                    provinceColor = provinceColors[provinceName];
                }
                lastIntersected.object.material[0].color.set(provinceColor);
                lastIntersected.object.material[1].color.set(mapEdgeColor);

                const tooltip = document.getElementById('tooltip');
                if (tooltip) {
                    tooltip.style.visibility = 'hidden';
                }
            }
            lastIntersected = null;

            raycaster.setFromCamera(mouse, camera);
            const intersects = raycaster.intersectObjects(chinaMap.children, true);
            lastIntersected = intersects.find(function (item) {
                return item.object.material && item.object.material.length === 2;
            });

            if (lastIntersected && lastIntersected.object.parent.properties.name) {
                lastIntersected.object.material[0].color.set(mapHoverColor);
                lastIntersected.object.material[1].color.set(mapHoverColor);
                showTooltip();

                // 如果是可点击的省份，改变鼠标样式
                if (lastIntersected.object.userData.url) {
                    document.body.style.cursor = 'pointer';
                } else {
                    document.body.style.cursor = 'default';
                }
            } else {
                document.body.style.cursor = 'default';
            }
        }

        controls.update();
        renderer.render(scene, camera);
    }

    function showTooltip() {
        const tooltip = document.getElementById('tooltip');
        if (tooltip && lastIntersected) {
            const name = lastIntersected.object.parent.properties.name;
            tooltip.textContent = name;
            tooltip.style.visibility = 'visible';
        }
    }

    function toggleMainPage() {
        const topBox = document.getElementById('topBox');
        const leftBox = document.getElementById('leftBox');
        const rightBox = document.getElementById('rightBox');

        if (isMainPageVisible) {
            topBox.style.transform = 'translateY(0)';
            leftBox.style.transform = 'translateX(0)';
            rightBox.style.transform = 'translateX(0)';
        } else {
            topBox.style.transform = 'translateY(-80px)';
            leftBox.style.transform = 'translateX(-100%)';
            rightBox.style.transform = 'translateX(100%)';
        }
        isMainPageVisible = !isMainPageVisible;
    }

    function onWindowResize() {
        camera.aspect = window.innerWidth / window.innerHeight;
        camera.updateProjectionMatrix();

        renderer.setSize(window.innerWidth, window.innerHeight);
    }

    // 初始化
    window.onload = init;
</script>
</body>
</html>
