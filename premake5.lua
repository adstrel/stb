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

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

    filter "configurations:Dist"
        runtime "Release"
        optimize "on"

        defines
        {
            "DISABLE_ASSERTS"
        }
