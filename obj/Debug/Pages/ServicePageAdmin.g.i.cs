﻿#pragma checksum "..\..\..\Pages\ServicePageAdmin.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "44EA24049E046D66EB1E57B25C5149984E0293E7CAE7C989DB58B51D6609EC9D"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using School.Pages;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace School.Pages {
    
    
    /// <summary>
    /// ServicePageAdmin
    /// </summary>
    public partial class ServicePageAdmin : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 20 "..\..\..\Pages\ServicePageAdmin.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox SearchTb;
        
        #line default
        #line hidden
        
        
        #line 22 "..\..\..\Pages\ServicePageAdmin.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox ServicesSortCb;
        
        #line default
        #line hidden
        
        
        #line 27 "..\..\..\Pages\ServicePageAdmin.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox ServicesFiltCb;
        
        #line default
        #line hidden
        
        
        #line 28 "..\..\..\Pages\ServicePageAdmin.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BtnTable;
        
        #line default
        #line hidden
        
        
        #line 31 "..\..\..\Pages\ServicePageAdmin.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListBox ServiceLB;
        
        #line default
        #line hidden
        
        
        #line 59 "..\..\..\Pages\ServicePageAdmin.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox PageCount;
        
        #line default
        #line hidden
        
        
        #line 61 "..\..\..\Pages\ServicePageAdmin.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button prevPages;
        
        #line default
        #line hidden
        
        
        #line 62 "..\..\..\Pages\ServicePageAdmin.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button firstBtn;
        
        #line default
        #line hidden
        
        
        #line 63 "..\..\..\Pages\ServicePageAdmin.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button secondBtn;
        
        #line default
        #line hidden
        
        
        #line 64 "..\..\..\Pages\ServicePageAdmin.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BtnNext;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/School;component/pages/servicepageadmin.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Pages\ServicePageAdmin.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 9 "..\..\..\Pages\ServicePageAdmin.xaml"
            ((School.Pages.ServicePageAdmin)(target)).IsVisibleChanged += new System.Windows.DependencyPropertyChangedEventHandler(this.Page_IsVisibleChanged);
            
            #line default
            #line hidden
            return;
            case 2:
            this.SearchTb = ((System.Windows.Controls.TextBox)(target));
            
            #line 20 "..\..\..\Pages\ServicePageAdmin.xaml"
            this.SearchTb.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.SearchTb_TextChanged);
            
            #line default
            #line hidden
            return;
            case 3:
            this.ServicesSortCb = ((System.Windows.Controls.ComboBox)(target));
            
            #line 22 "..\..\..\Pages\ServicePageAdmin.xaml"
            this.ServicesSortCb.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.ServicesSortCb_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 4:
            this.ServicesFiltCb = ((System.Windows.Controls.ComboBox)(target));
            
            #line 27 "..\..\..\Pages\ServicePageAdmin.xaml"
            this.ServicesFiltCb.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.ServicesFiltCb_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 5:
            this.BtnTable = ((System.Windows.Controls.Button)(target));
            
            #line 28 "..\..\..\Pages\ServicePageAdmin.xaml"
            this.BtnTable.Click += new System.Windows.RoutedEventHandler(this.BtnTable_Click);
            
            #line default
            #line hidden
            return;
            case 6:
            this.ServiceLB = ((System.Windows.Controls.ListBox)(target));
            return;
            case 7:
            this.PageCount = ((System.Windows.Controls.TextBox)(target));
            
            #line 59 "..\..\..\Pages\ServicePageAdmin.xaml"
            this.PageCount.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.PageCount_TextChanged);
            
            #line default
            #line hidden
            return;
            case 8:
            this.prevPages = ((System.Windows.Controls.Button)(target));
            
            #line 61 "..\..\..\Pages\ServicePageAdmin.xaml"
            this.prevPages.Click += new System.Windows.RoutedEventHandler(this.prevPages_Click);
            
            #line default
            #line hidden
            return;
            case 9:
            this.firstBtn = ((System.Windows.Controls.Button)(target));
            
            #line 62 "..\..\..\Pages\ServicePageAdmin.xaml"
            this.firstBtn.Click += new System.Windows.RoutedEventHandler(this.firstBtn_Click);
            
            #line default
            #line hidden
            return;
            case 10:
            this.secondBtn = ((System.Windows.Controls.Button)(target));
            
            #line 63 "..\..\..\Pages\ServicePageAdmin.xaml"
            this.secondBtn.Click += new System.Windows.RoutedEventHandler(this.secondBtn_Click);
            
            #line default
            #line hidden
            return;
            case 11:
            this.BtnNext = ((System.Windows.Controls.Button)(target));
            
            #line 64 "..\..\..\Pages\ServicePageAdmin.xaml"
            this.BtnNext.Click += new System.Windows.RoutedEventHandler(this.BtnNext_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

