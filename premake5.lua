project "stb"
    kind "StaticLib"
    language "C"
    
    staticruntime "on"
    
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
        symbols "on"
        optimize "off"

    filter "configurations:Release"
        runtime "Release"
        symbols "on"
        optimize "on"

    filter "configurations:Dist"
        runtime "Release"
        symbols "off"
        optimize "on"

        defines
        {
            "DISABLE_ASSERTS"
        }
