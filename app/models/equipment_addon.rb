class EquipmentAddon < ElementdataModel
    self.primary_key = "id"

    def param_list
        list = []
        list.push(param1) if num_params > 0
        list.push(param2) if num_params > 1
        list.push(param3) if num_params > 2
        list
    end
end
