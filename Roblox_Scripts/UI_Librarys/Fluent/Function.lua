local Add = {} do
    function Add:Slider(Tab, Name, Description, Default, Min, Max, Rounding, Func)
        Name = type(Name) == "string" and Name or tostring(Name)
        Description = type(Description) == "string" and Description or tostring(Description)
        Default = type(Default) == "number" and Default or type(Default) == "string" and tonumber(Default) or 0
        Min = type(Min) == "number" and Min or type(Min) == "string" and tonumber(Min) or 0
        Max = type(Max) == "number" and Max or type(Max) == "string" and tonumber(Max) or 0
        Rounding = type(Rounding) == "number" and Rounding or type(Rounding) == "string" and tonumber(Rounding) or 0
        Func = type(Func) == "function" and Func or function() end

        return Tab:AddSlider(Name, {
            Title = Name,
            Description = Description,
            Default = Default,
            Min = Min,
            Max = Max,
            Rounding = Rounding,
            Callback = Func
        })
    end

    function Add:Button(Tab, Name, Description, Func)
        Name = type(Name) == "string" and Name or tostring(Name)
        Description = type(Description) == "string" and Description or tostring(Description)
        Func = type(Func) == "function" and Func or function() end

        return Tab:AddButton({
            Title = Name,
            Description = Description,
            Callback = Func
        })
    end

    function Add:Textbox(Tab, Name, Default, Placeholder, Numeric, Func)
        Name = type(Name) == "string" and Name or tostring(Name)
        Default = type(Default) == "string" and Default or "Default"
        Placeholder = type(Placeholder) == "string" and Placeholder or "Placeholder"
        Numeric = type(Numeric) == "boolean" and Numeric or false
        Func = type(Func) == "function" and Func or function() end

        return Tab:AddInput(Name, {
            Title = Name,
            Default = Default,
            Placeholder = Placeholder,
            Numeric = Numeric,
            Callback = Func
        })
    end

    function Add:Dropdown(Tab, Name, Values, Multi, Default, Func)
        Name = type(Name) == "string" and Name or tostring(Name)
        Values = type(Values) == "table" and Values or {}
        Multi = type(Multi) == "boolean" and Multi or false
        Default = type(Default) == "string" and Default or Values[1] or ""
        Func = type(Func) == "function" and Func or function() end

        return Tab:AddDropdown({
            Title = Name,
            Values = Values,
            Multi = Multi,
            Default = Default,
            Callback = Func
        })
    end

    function Add:Toggle(Tab, Title, Default, Func)
        Title = type(Title) == "string" and Title or "Default Title"
        Default = type(Default) == "boolean" and Default or false
        Func = type(Func) == "function" and Func or function() end

        return Tab:AddToggle({
            Title = Title,
            Default = Default,
            Callback = Func
        })
    end
end

return Add
