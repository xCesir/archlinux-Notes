function ob --wraps='VK_DRIVER_FILES=/usr/share/vulkan/icd.d/intel_icd.x86_64.json:/usr/share/vulkan/icd.d/intel_icd.i686.json com.obsproject.Studio >> /dev/null 2> /dev/null &disown' --description 'alias ob=VK_DRIVER_FILES=/usr/share/vulkan/icd.d/intel_icd.x86_64.json:/usr/share/vulkan/icd.d/intel_icd.i686.json com.obsproject.Studio >> /dev/null 2> /dev/null &disown'
    VK_DRIVER_FILES=/usr/share/vulkan/icd.d/intel_icd.x86_64.json:/usr/share/vulkan/icd.d/intel_icd.i686.json com.obsproject.Studio >> /dev/null 2> /dev/null &disown $argv
end
