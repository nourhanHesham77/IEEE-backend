<?php
//using print array..& HTML pre code to maintain shape..

echo "<pre>";

print_r([
    "frontend"=>[
        "HTML",
        "CSS",
        "JS"=>[
            "Vuejs"=>[
                2 => "v2",
                "v3"
            ],
            "Reactjs",
            "Svelte"
        ]
    ]
    ,"BackEnd"=>[
    "PHP",
    "MYSQL",
    "Security"
    ],
    "Git",
    "Github",
    "Testing"=>[
        "Unit Testing",
        "End To End",
        "Integration"
    ]
            ]);
            
echo "</pre>";
