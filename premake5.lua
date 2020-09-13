project "stb"
    kind "StaticLib"
    language "C"
    staticruntime "On"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "include/stb/**.h",
        "include/stb/**.c",
        "include/stb_util_impl.c"
    }

    filter "configurations:Debug"
        runtime "Debug"
        optimize "Off"
        symbols "On"

    filter "configurations:Release"
        runtime "Release"
        optimize "Speed"
        vectorextensions "AVX2"
        symbols "On"
        flags
        {
            "LinkTimeOptimization"
        }

    filter "configurations:Dist"
        runtime "Release"
        optimize "Speed"
        vectorextensions "AVX2"
        symbols "Off"
        flags
        {
            "LinkTimeOptimization",
            "FatalWarnings"
        }

        defines
        {
            "DISABLE_ASSERTS"
        }
