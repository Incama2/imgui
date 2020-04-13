project "ImGui"
    kind "StaticLib"
    language "C++"
    
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
    
	files
	{
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp",
        "imgui_impl_dx11.cpp",
        "imgui_impl_dx11.h",
        "imgui_impl_win32.cpp",
        "imgui_impl_win32.h",
    }
    
    systemversion "latest"
    cppdialect "C++17"
    staticruntime "On"
        
    filter "configurations:Release"
        buildoptions "/MT"
