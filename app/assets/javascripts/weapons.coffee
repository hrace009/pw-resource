refine_amount = (level, base) ->
    level = Math.max(Math.min(level, 12), 0)
    multiplier = switch level
        when 1 then 1
        when 2 then 2
        when 3 then 3.05
        when 4 then 4.3
        when 5 then 5.75
        when 6 then 7.55
        when 7 then 9.95
        when 8 then 13
        when 9 then 17.05
        when 10 then 22.03
        when 11 then 29
        when 12 then 37.5
        else 0
    base*multiplier

calculate_refine = -> 
    input = $ "select#refine"
    base = parseInt input.data "base-refine"
    level = parseInt input.children(":selected").val()
    refine = refine_amount level, base

    $(".refine_element").each ->
        $(@).text Math.floor refine + $(@).data "original"
        if level == 0 then $(@).removeAttr "style" else $(@).css "color", "#dd4444"


$ -> $("select#refine").change -> calculate_refine()