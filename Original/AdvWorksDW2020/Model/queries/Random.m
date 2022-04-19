let
    Source = Table.FromRows(Json.Document(Binary.Decompress(Binary.FromText("i45WCkmtKFHSUTLUM1CK1YlWCk7NyQFxTQxN9QyAQrEA", BinaryEncoding.Base64), Compression.Deflate)), let _t = ((type nullable text) meta [Serialized.Text = true]) in type table [Hi = _t, #"Whats-New" = _t]),
    #"Changed Type" = Table.TransformColumnTypes(Source,{{"Hi", type text}, {"Whats-New", Int64.Type}})
in
    #"Changed Type"