Imports System
Imports DevExpress.Xpo
Namespace nwind

    Public Class Products
        Inherits XPLiteObject

        Private fCategoryID As Integer
        Public Property CategoryID() As Integer
            Get
                Return fCategoryID
            End Get
            Set(ByVal value As Integer)
                SetPropertyValue(Of Integer)("CategoryID", fCategoryID, value)
            End Set
        End Property
        Private fDiscontinued As Boolean
        Public Property Discontinued() As Boolean
            Get
                Return fDiscontinued
            End Get
            Set(ByVal value As Boolean)
                SetPropertyValue(Of Boolean)("Discontinued", fDiscontinued, value)
            End Set
        End Property
        Private fEAN13 As String
        <Size(12)> _
        Public Property EAN13() As String
            Get
                Return fEAN13
            End Get
            Set(ByVal value As String)
                SetPropertyValue(Of String)("EAN13", fEAN13, value)
            End Set
        End Property
        Private fProductID As Integer
        <Key(True)> _
        Public Property ProductID() As Integer
            Get
                Return fProductID
            End Get
            Set(ByVal value As Integer)
                SetPropertyValue(Of Integer)("ProductID", fProductID, value)
            End Set
        End Property
        Private fProductName As String
        <Size(40)> _
        Public Property ProductName() As String
            Get
                Return fProductName
            End Get
            Set(ByVal value As String)
                SetPropertyValue(Of String)("ProductName", fProductName, value)
            End Set
        End Property
        Private fQuantityPerUnit As String
        <Size(20)> _
        Public Property QuantityPerUnit() As String
            Get
                Return fQuantityPerUnit
            End Get
            Set(ByVal value As String)
                SetPropertyValue(Of String)("QuantityPerUnit", fQuantityPerUnit, value)
            End Set
        End Property
        Private fReorderLevel As Short
        Public Property ReorderLevel() As Short
            Get
                Return fReorderLevel
            End Get
            Set(ByVal value As Short)
                SetPropertyValue(Of Short)("ReorderLevel", fReorderLevel, value)
            End Set
        End Property
        Private fSupplierID As Integer
        Public Property SupplierID() As Integer
            Get
                Return fSupplierID
            End Get
            Set(ByVal value As Integer)
                SetPropertyValue(Of Integer)("SupplierID", fSupplierID, value)
            End Set
        End Property
        Private fUnitPrice As Decimal
        Public Property UnitPrice() As Decimal
            Get
                Return fUnitPrice
            End Get
            Set(ByVal value As Decimal)
                SetPropertyValue(Of Decimal)("UnitPrice", fUnitPrice, value)
            End Set
        End Property
        Private fUnitsInStock As Short
        Public Property UnitsInStock() As Short
            Get
                Return fUnitsInStock
            End Get
            Set(ByVal value As Short)
                SetPropertyValue(Of Short)("UnitsInStock", fUnitsInStock, value)
            End Set
        End Property
        Private fUnitsOnOrder As Short
        Public Property UnitsOnOrder() As Short
            Get
                Return fUnitsOnOrder
            End Get
            Set(ByVal value As Short)
                SetPropertyValue(Of Short)("UnitsOnOrder", fUnitsOnOrder, value)
            End Set
        End Property
        Public Sub New(ByVal session As Session)
            MyBase.New(session)
        End Sub
        Public Sub New()
            MyBase.New(Session.DefaultSession)
        End Sub
        Public Overrides Sub AfterConstruction()
            MyBase.AfterConstruction()
        End Sub
    End Class

End Namespace
