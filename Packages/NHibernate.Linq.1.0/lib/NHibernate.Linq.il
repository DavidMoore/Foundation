
//  Microsoft (R) .NET Framework IL Disassembler.  Version 3.5.30729.1
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v2.0.50727
.assembly extern System.Core
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 3:5:0:0
}
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 2:0:0:0
}
.assembly extern NHibernate
{
  .publickeytoken = (AA 95 F2 07 79 8D FD B4 )                         // ....y...
  .ver 2:1:2:4000
}
.assembly extern System.Data.Services
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 3:5:0:0
}
.assembly extern System
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 2:0:0:0
}
.assembly extern Iesi.Collections
{
  .publickeytoken = (AA 95 F2 07 79 8D FD B4 )                         // ....y...
  .ver 1:0:1:0
}
.assembly NHibernate.Linq
{
  .custom instance void [mscorlib]System.Security.AllowPartiallyTrustedCallersAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.CLSCompliantAttribute::.ctor(bool) = ( 01 00 01 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyDelaySignAttribute::.ctor(bool) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 0B 4E 48 46 6F 72 67 65 2E 6F 72 67 00 00 ) // ...NHForge.org..
  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 0F 4E 48 69 62 65 72 6E 61 74 65 2E 4C 69   // ...NHibernate.Li
                                                                                              6E 71 00 00 )                                     // nq..
  .custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 1E 41 20 6C 69 6E 71 20 70 72 6F 76 69 64   // ...A linq provid
                                                                                                    65 72 20 66 6F 72 20 4E 48 69 62 65 72 6E 61 74   // er for NHibernat
                                                                                                    65 00 00 )                                        // e..
  .custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 14 4C 69 63 65 6E 73 65 64 20 75 6E 64 65   // ...Licensed unde
                                                                                                  72 20 4C 47 50 4C 2E 00 00 )                      // r LGPL...
  .custom instance void [mscorlib]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 0A 31 2E 31 2E 30 2E 31 30 30 31 00 00 )    // ...1.1.0.1001..
  .custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 0F 4E 48 69 62 65 72 6E 61 74 65 2E 4C 69   // ...NHibernate.Li
                                                                                                6E 71 00 00 )                                     // nq..
  .custom instance void [mscorlib]System.Reflection.AssemblyInformationalVersionAttribute::.ctor(string) = ( 01 00 0A 31 2E 31 2E 30 2E 31 30 30 31 00 00 )    // ...1.1.0.1001..
  .hash algorithm 0x00008004
  .ver 1:1:0:1001
}
.module NHibernate.Linq.dll
// MVID: {F233971D-B03F-42A4-937F-644633406AC4}
.imagebase 0x00400000
.file alignment 0x00001000
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x003D0000


// =============== CLASS MEMBERS DECLARATION ===================

.class public abstract auto ansi beforefieldinit NHibernate.Linq.Expressions.NHibernateExpression
       extends [System.Core]System.Linq.Expressions.Expression
{
  .method public hidebysig specialname instance valuetype NHibernate.Linq.Expressions.NHibernateExpressionType 
          get_NodeType() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (valuetype NHibernate.Linq.Expressions.NHibernateExpressionType V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       instance valuetype [System.Core]System.Linq.Expressions.ExpressionType [System.Core]System.Linq.Expressions.Expression::get_NodeType()
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method NHibernateExpression::get_NodeType

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype NHibernate.Linq.Expressions.NHibernateExpressionType nodeType,
                               class [mscorlib]System.Type 'type') cil managed
  {
    // Code size       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void [System.Core]System.Linq.Expressions.Expression::.ctor(valuetype [System.Core]System.Linq.Expressions.ExpressionType,
                                                                                              class [mscorlib]System.Type)
    IL_0008:  nop
    IL_0009:  nop
    IL_000a:  nop
    IL_000b:  ret
  } // end of method NHibernateExpression::.ctor

  .property instance valuetype NHibernate.Linq.Expressions.NHibernateExpressionType
          NodeType()
  {
    .get instance valuetype NHibernate.Linq.Expressions.NHibernateExpressionType NHibernate.Linq.Expressions.NHibernateExpression::get_NodeType()
  } // end of property NHibernateExpression::NodeType
} // end of class NHibernate.Linq.Expressions.NHibernateExpression

.class public auto ansi beforefieldinit NHibernate.Linq.Expressions.PropertyAccessExpression
       extends NHibernate.Linq.Expressions.NHibernateExpression
{
  .field private initonly string _name
  .field private initonly class NHibernate.Linq.Expressions.EntityExpression _expression
  .field private initonly class [NHibernate]NHibernate.Type.IType _nhibernateType
  .method public hidebysig specialname instance string 
          get_Name() cil managed
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      string NHibernate.Linq.Expressions.PropertyAccessExpression::_name
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method PropertyAccessExpression::get_Name

  .method public hidebysig specialname instance class NHibernate.Linq.Expressions.EntityExpression 
          get_Expression() cil managed
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (class NHibernate.Linq.Expressions.EntityExpression V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Expressions.PropertyAccessExpression::_expression
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method PropertyAccessExpression::get_Expression

  .method public hidebysig specialname instance class [NHibernate]NHibernate.Type.IType 
          get_NHibernateType() cil managed
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (class [NHibernate]NHibernate.Type.IType V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.Type.IType NHibernate.Linq.Expressions.PropertyAccessExpression::_nhibernateType
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method PropertyAccessExpression::get_NHibernateType

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string name,
                               class [mscorlib]System.Type 'type',
                               class [NHibernate]NHibernate.Type.IType nhibernateType,
                               class NHibernate.Linq.Expressions.EntityExpression expression) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  ldarg.s    expression
    IL_0006:  ldc.i4     0x3eb
    IL_000b:  call       instance void NHibernate.Linq.Expressions.PropertyAccessExpression::.ctor(string,
                                                                                                   class [mscorlib]System.Type,
                                                                                                   class [NHibernate]NHibernate.Type.IType,
                                                                                                   class NHibernate.Linq.Expressions.EntityExpression,
                                                                                                   valuetype NHibernate.Linq.Expressions.NHibernateExpressionType)
    IL_0010:  nop
    IL_0011:  nop
    IL_0012:  nop
    IL_0013:  ret
  } // end of method PropertyAccessExpression::.ctor

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(string name,
                               class [mscorlib]System.Type 'type',
                               class [NHibernate]NHibernate.Type.IType nhibernateType,
                               class NHibernate.Linq.Expressions.EntityExpression expression,
                               valuetype NHibernate.Linq.Expressions.NHibernateExpressionType nodeType) cil managed
  {
    // Code size       126 (0x7e)
    .maxstack  3
    .locals init (bool V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.s    nodeType
    IL_0003:  ldarg.2
    IL_0004:  call       instance void NHibernate.Linq.Expressions.NHibernateExpression::.ctor(valuetype NHibernate.Linq.Expressions.NHibernateExpressionType,
                                                                                               class [mscorlib]System.Type)
    IL_0009:  nop
    IL_000a:  nop
    IL_000b:  ldarg.1
    IL_000c:  call       bool [mscorlib]System.String::IsNullOrEmpty(string)
    IL_0011:  ldc.i4.0
    IL_0012:  ceq
    IL_0014:  stloc.0
    IL_0015:  ldloc.0
    IL_0016:  brtrue.s   IL_0023

    IL_0018:  ldstr      "name"
    IL_001d:  newobj     instance void [mscorlib]System.ArgumentNullException::.ctor(string)
    IL_0022:  throw

    IL_0023:  ldarg.2
    IL_0024:  ldnull
    IL_0025:  ceq
    IL_0027:  ldc.i4.0
    IL_0028:  ceq
    IL_002a:  stloc.0
    IL_002b:  ldloc.0
    IL_002c:  brtrue.s   IL_0039

    IL_002e:  ldstr      "type"
    IL_0033:  newobj     instance void [mscorlib]System.ArgumentNullException::.ctor(string)
    IL_0038:  throw

    IL_0039:  ldarg.3
    IL_003a:  ldnull
    IL_003b:  ceq
    IL_003d:  ldc.i4.0
    IL_003e:  ceq
    IL_0040:  stloc.0
    IL_0041:  ldloc.0
    IL_0042:  brtrue.s   IL_004f

    IL_0044:  ldstr      "nhibernateType"
    IL_0049:  newobj     instance void [mscorlib]System.ArgumentNullException::.ctor(string)
    IL_004e:  throw

    IL_004f:  ldarg.s    expression
    IL_0051:  ldnull
    IL_0052:  ceq
    IL_0054:  ldc.i4.0
    IL_0055:  ceq
    IL_0057:  stloc.0
    IL_0058:  ldloc.0
    IL_0059:  brtrue.s   IL_0066

    IL_005b:  ldstr      "expression"
    IL_0060:  newobj     instance void [mscorlib]System.ArgumentNullException::.ctor(string)
    IL_0065:  throw

    IL_0066:  ldarg.0
    IL_0067:  ldarg.1
    IL_0068:  stfld      string NHibernate.Linq.Expressions.PropertyAccessExpression::_name
    IL_006d:  ldarg.0
    IL_006e:  ldarg.s    expression
    IL_0070:  stfld      class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Expressions.PropertyAccessExpression::_expression
    IL_0075:  ldarg.0
    IL_0076:  ldarg.3
    IL_0077:  stfld      class [NHibernate]NHibernate.Type.IType NHibernate.Linq.Expressions.PropertyAccessExpression::_nhibernateType
    IL_007c:  nop
    IL_007d:  ret
  } // end of method PropertyAccessExpression::.ctor

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       33 (0x21)
    .maxstack  3
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       instance class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Expressions.PropertyAccessExpression::get_Expression()
    IL_0007:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_000c:  ldstr      "."
    IL_0011:  ldarg.0
    IL_0012:  call       instance string NHibernate.Linq.Expressions.PropertyAccessExpression::get_Name()
    IL_0017:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_001c:  stloc.0
    IL_001d:  br.s       IL_001f

    IL_001f:  ldloc.0
    IL_0020:  ret
  } // end of method PropertyAccessExpression::ToString

  .property instance string Name()
  {
    .get instance string NHibernate.Linq.Expressions.PropertyAccessExpression::get_Name()
  } // end of property PropertyAccessExpression::Name
  .property instance class NHibernate.Linq.Expressions.EntityExpression
          Expression()
  {
    .get instance class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Expressions.PropertyAccessExpression::get_Expression()
  } // end of property PropertyAccessExpression::Expression
  .property instance class [NHibernate]NHibernate.Type.IType
          NHibernateType()
  {
    .get instance class [NHibernate]NHibernate.Type.IType NHibernate.Linq.Expressions.PropertyAccessExpression::get_NHibernateType()
  } // end of property PropertyAccessExpression::NHibernateType
} // end of class NHibernate.Linq.Expressions.PropertyAccessExpression

.class public auto ansi beforefieldinit NHibernate.Linq.Expressions.CollectionAccessExpression
       extends NHibernate.Linq.Expressions.PropertyAccessExpression
{
  .field private initonly class NHibernate.Linq.Expressions.EntityExpression _elementExpression
  .method public hidebysig specialname instance class NHibernate.Linq.Expressions.EntityExpression 
          get_ElementExpression() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (class NHibernate.Linq.Expressions.EntityExpression V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Expressions.CollectionAccessExpression::_elementExpression
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method CollectionAccessExpression::get_ElementExpression

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string name,
                               class [mscorlib]System.Type 'type',
                               class [NHibernate]NHibernate.Type.IType nhibernateType,
                               class NHibernate.Linq.Expressions.EntityExpression expression,
                               class NHibernate.Linq.Expressions.EntityExpression elementExpression) cil managed
  {
    // Code size       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  ldarg.s    expression
    IL_0006:  ldc.i4     0x3ec
    IL_000b:  call       instance void NHibernate.Linq.Expressions.PropertyAccessExpression::.ctor(string,
                                                                                                   class [mscorlib]System.Type,
                                                                                                   class [NHibernate]NHibernate.Type.IType,
                                                                                                   class NHibernate.Linq.Expressions.EntityExpression,
                                                                                                   valuetype NHibernate.Linq.Expressions.NHibernateExpressionType)
    IL_0010:  nop
    IL_0011:  nop
    IL_0012:  ldarg.0
    IL_0013:  ldarg.s    elementExpression
    IL_0015:  stfld      class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Expressions.CollectionAccessExpression::_elementExpression
    IL_001a:  nop
    IL_001b:  ret
  } // end of method CollectionAccessExpression::.ctor

  .property instance class NHibernate.Linq.Expressions.EntityExpression
          ElementExpression()
  {
    .get instance class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Expressions.CollectionAccessExpression::get_ElementExpression()
  } // end of property CollectionAccessExpression::ElementExpression
} // end of class NHibernate.Linq.Expressions.CollectionAccessExpression

.class public auto ansi beforefieldinit NHibernate.Linq.Expressions.EntityExpression
       extends NHibernate.Linq.Expressions.NHibernateExpression
{
  .field private initonly string _alias
  .field private initonly string _associationPath
  .field private initonly class [NHibernate]NHibernate.Metadata.IClassMetadata _metaData
  .field private initonly class [System.Core]System.Linq.Expressions.Expression _expression
  .method public hidebysig specialname instance string 
          get_Alias() cil managed
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      string NHibernate.Linq.Expressions.EntityExpression::_alias
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method EntityExpression::get_Alias

  .method public hidebysig specialname instance string 
          get_AssociationPath() cil managed
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      string NHibernate.Linq.Expressions.EntityExpression::_associationPath
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method EntityExpression::get_AssociationPath

  .method public hidebysig specialname instance class [NHibernate]NHibernate.Metadata.IClassMetadata 
          get_MetaData() cil managed
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (class [NHibernate]NHibernate.Metadata.IClassMetadata V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.Metadata.IClassMetadata NHibernate.Linq.Expressions.EntityExpression::_metaData
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method EntityExpression::get_MetaData

  .method public hidebysig specialname instance class [System.Core]System.Linq.Expressions.Expression 
          get_Expression() cil managed
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Expressions.EntityExpression::_expression
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method EntityExpression::get_Expression

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string associationPath,
                               string alias,
                               class [mscorlib]System.Type 'type',
                               class [NHibernate]NHibernate.Metadata.IClassMetadata metaData,
                               class [System.Core]System.Linq.Expressions.Expression expression) cil managed
  {
    // Code size       62 (0x3e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.s    expression
    IL_0003:  call       bool NHibernate.Linq.Expressions.EntityExpression::IsRoot(class [System.Core]System.Linq.Expressions.Expression)
    IL_0008:  brtrue.s   IL_0011

    IL_000a:  ldc.i4     0x3ea
    IL_000f:  br.s       IL_0016

    IL_0011:  ldc.i4     0x3e9
    IL_0016:  ldarg.3
    IL_0017:  call       instance void NHibernate.Linq.Expressions.NHibernateExpression::.ctor(valuetype NHibernate.Linq.Expressions.NHibernateExpressionType,
                                                                                               class [mscorlib]System.Type)
    IL_001c:  nop
    IL_001d:  nop
    IL_001e:  ldarg.0
    IL_001f:  ldarg.1
    IL_0020:  stfld      string NHibernate.Linq.Expressions.EntityExpression::_associationPath
    IL_0025:  ldarg.0
    IL_0026:  ldarg.2
    IL_0027:  stfld      string NHibernate.Linq.Expressions.EntityExpression::_alias
    IL_002c:  ldarg.0
    IL_002d:  ldarg.s    metaData
    IL_002f:  stfld      class [NHibernate]NHibernate.Metadata.IClassMetadata NHibernate.Linq.Expressions.EntityExpression::_metaData
    IL_0034:  ldarg.0
    IL_0035:  ldarg.s    expression
    IL_0037:  stfld      class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Expressions.EntityExpression::_expression
    IL_003c:  nop
    IL_003d:  ret
  } // end of method EntityExpression::.ctor

  .method private hidebysig static bool  IsRoot(class [System.Core]System.Linq.Expressions.Expression expr) cil managed
  {
    // Code size       39 (0x27)
    .maxstack  2
    .locals init (bool V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldnull
    IL_0003:  ceq
    IL_0005:  ldc.i4.0
    IL_0006:  ceq
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  brtrue.s   IL_0010

    IL_000c:  ldc.i4.1
    IL_000d:  stloc.0
    IL_000e:  br.s       IL_0025

    IL_0010:  ldarg.0
    IL_0011:  isinst     NHibernate.Linq.Expressions.EntityExpression
    IL_0016:  ldnull
    IL_0017:  cgt.un
    IL_0019:  stloc.1
    IL_001a:  ldloc.1
    IL_001b:  brtrue.s   IL_0021

    IL_001d:  ldc.i4.1
    IL_001e:  stloc.0
    IL_001f:  br.s       IL_0025

    IL_0021:  ldc.i4.0
    IL_0022:  stloc.0
    IL_0023:  br.s       IL_0025

    IL_0025:  ldloc.0
    IL_0026:  ret
  } // end of method EntityExpression::IsRoot

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       instance string NHibernate.Linq.Expressions.EntityExpression::get_Alias()
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method EntityExpression::ToString

  .method public hidebysig newslot virtual 
          instance string  GetAliasedIdentifierPropertyName() cil managed
  {
    // Code size       68 (0x44)
    .maxstack  3
    .locals init (string V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       instance valuetype NHibernate.Linq.Expressions.NHibernateExpressionType NHibernate.Linq.Expressions.NHibernateExpression::get_NodeType()
    IL_0007:  ldc.i4     0x3e9
    IL_000c:  ceq
    IL_000e:  ldc.i4.0
    IL_000f:  ceq
    IL_0011:  stloc.1
    IL_0012:  ldloc.1
    IL_0013:  brtrue.s   IL_0024

    IL_0015:  nop
    IL_0016:  ldarg.0
    IL_0017:  call       instance class [NHibernate]NHibernate.Metadata.IClassMetadata NHibernate.Linq.Expressions.EntityExpression::get_MetaData()
    IL_001c:  callvirt   instance string [NHibernate]NHibernate.Metadata.IClassMetadata::get_IdentifierPropertyName()
    IL_0021:  stloc.0
    IL_0022:  br.s       IL_0042

    IL_0024:  ldstr      "{0}.{1}"
    IL_0029:  ldarg.0
    IL_002a:  call       instance string NHibernate.Linq.Expressions.EntityExpression::get_Alias()
    IL_002f:  ldarg.0
    IL_0030:  call       instance class [NHibernate]NHibernate.Metadata.IClassMetadata NHibernate.Linq.Expressions.EntityExpression::get_MetaData()
    IL_0035:  callvirt   instance string [NHibernate]NHibernate.Metadata.IClassMetadata::get_IdentifierPropertyName()
    IL_003a:  call       string [mscorlib]System.String::Format(string,
                                                                object,
                                                                object)
    IL_003f:  stloc.0
    IL_0040:  br.s       IL_0042

    IL_0042:  ldloc.0
    IL_0043:  ret
  } // end of method EntityExpression::GetAliasedIdentifierPropertyName

  .property instance string Alias()
  {
    .get instance string NHibernate.Linq.Expressions.EntityExpression::get_Alias()
  } // end of property EntityExpression::Alias
  .property instance string AssociationPath()
  {
    .get instance string NHibernate.Linq.Expressions.EntityExpression::get_AssociationPath()
  } // end of property EntityExpression::AssociationPath
  .property instance class [NHibernate]NHibernate.Metadata.IClassMetadata
          MetaData()
  {
    .get instance class [NHibernate]NHibernate.Metadata.IClassMetadata NHibernate.Linq.Expressions.EntityExpression::get_MetaData()
  } // end of property EntityExpression::MetaData
  .property instance class [System.Core]System.Linq.Expressions.Expression
          Expression()
  {
    .get instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Expressions.EntityExpression::get_Expression()
  } // end of property EntityExpression::Expression
} // end of class NHibernate.Linq.Expressions.EntityExpression

.class public auto ansi sealed NHibernate.Linq.Expressions.NHibernateExpressionType
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype NHibernate.Linq.Expressions.NHibernateExpressionType QuerySource = int32(0x000003E8)
  .field public static literal valuetype NHibernate.Linq.Expressions.NHibernateExpressionType RootEntity = int32(0x000003E9)
  .field public static literal valuetype NHibernate.Linq.Expressions.NHibernateExpressionType Entity = int32(0x000003EA)
  .field public static literal valuetype NHibernate.Linq.Expressions.NHibernateExpressionType PropertyAccess = int32(0x000003EB)
  .field public static literal valuetype NHibernate.Linq.Expressions.NHibernateExpressionType CollectionAccess = int32(0x000003EC)
} // end of class NHibernate.Linq.Expressions.NHibernateExpressionType

.class public auto ansi beforefieldinit NHibernate.Linq.Expressions.QuerySourceExpression
       extends NHibernate.Linq.Expressions.NHibernateExpression
{
  .field private initonly string _alias
  .field private initonly class [System.Core]System.Linq.IQueryable _query
  .field private initonly class [mscorlib]System.Type _elementType
  .method public hidebysig specialname instance string 
          get_Alias() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      string NHibernate.Linq.Expressions.QuerySourceExpression::_alias
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method QuerySourceExpression::get_Alias

  .method public hidebysig specialname instance class [System.Core]System.Linq.IQueryable 
          get_Query() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (class [System.Core]System.Linq.IQueryable V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [System.Core]System.Linq.IQueryable NHibernate.Linq.Expressions.QuerySourceExpression::_query
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method QuerySourceExpression::get_Query

  .method public hidebysig specialname instance class [mscorlib]System.Type 
          get_ElementType() cil managed
  {
    // Code size       27 (0x1b)
    .maxstack  2
    .locals init (class [mscorlib]System.Type V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [mscorlib]System.Type NHibernate.Linq.Expressions.QuerySourceExpression::_elementType
    IL_0007:  dup
    IL_0008:  brtrue.s   IL_0016

    IL_000a:  pop
    IL_000b:  ldarg.0
    IL_000c:  call       instance class [System.Core]System.Linq.IQueryable NHibernate.Linq.Expressions.QuerySourceExpression::get_Query()
    IL_0011:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.IQueryable::get_ElementType()
    IL_0016:  stloc.0
    IL_0017:  br.s       IL_0019

    IL_0019:  ldloc.0
    IL_001a:  ret
  } // end of method QuerySourceExpression::get_ElementType

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string alias,
                               class [System.Core]System.Linq.IQueryable query) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldnull
    IL_0004:  call       instance void NHibernate.Linq.Expressions.QuerySourceExpression::.ctor(string,
                                                                                                class [System.Core]System.Linq.IQueryable,
                                                                                                class [mscorlib]System.Type)
    IL_0009:  nop
    IL_000a:  nop
    IL_000b:  nop
    IL_000c:  ret
  } // end of method QuerySourceExpression::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string alias,
                               class [System.Core]System.Linq.IQueryable query,
                               class [mscorlib]System.Type elementType) cil managed
  {
    // Code size       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0x3e8
    IL_0006:  ldarg.2
    IL_0007:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_000c:  call       instance void NHibernate.Linq.Expressions.NHibernateExpression::.ctor(valuetype NHibernate.Linq.Expressions.NHibernateExpressionType,
                                                                                               class [mscorlib]System.Type)
    IL_0011:  nop
    IL_0012:  nop
    IL_0013:  ldarg.0
    IL_0014:  ldarg.1
    IL_0015:  stfld      string NHibernate.Linq.Expressions.QuerySourceExpression::_alias
    IL_001a:  ldarg.0
    IL_001b:  ldarg.2
    IL_001c:  stfld      class [System.Core]System.Linq.IQueryable NHibernate.Linq.Expressions.QuerySourceExpression::_query
    IL_0021:  ldarg.0
    IL_0022:  ldarg.3
    IL_0023:  stfld      class [mscorlib]System.Type NHibernate.Linq.Expressions.QuerySourceExpression::_elementType
    IL_0028:  nop
    IL_0029:  ret
  } // end of method QuerySourceExpression::.ctor

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       36 (0x24)
    .maxstack  1
    .locals init (string V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       instance string NHibernate.Linq.Expressions.QuerySourceExpression::get_Alias()
    IL_0007:  call       bool [mscorlib]System.String::IsNullOrEmpty(string)
    IL_000c:  stloc.1
    IL_000d:  ldloc.1
    IL_000e:  brtrue.s   IL_0019

    IL_0010:  ldarg.0
    IL_0011:  call       instance string NHibernate.Linq.Expressions.QuerySourceExpression::get_Alias()
    IL_0016:  stloc.0
    IL_0017:  br.s       IL_0022

    IL_0019:  ldarg.0
    IL_001a:  call       instance string [System.Core]System.Linq.Expressions.Expression::ToString()
    IL_001f:  stloc.0
    IL_0020:  br.s       IL_0022

    IL_0022:  ldloc.0
    IL_0023:  ret
  } // end of method QuerySourceExpression::ToString

  .property instance string Alias()
  {
    .get instance string NHibernate.Linq.Expressions.QuerySourceExpression::get_Alias()
  } // end of property QuerySourceExpression::Alias
  .property instance class [System.Core]System.Linq.IQueryable
          Query()
  {
    .get instance class [System.Core]System.Linq.IQueryable NHibernate.Linq.Expressions.QuerySourceExpression::get_Query()
  } // end of property QuerySourceExpression::Query
  .property instance class [mscorlib]System.Type
          ElementType()
  {
    .get instance class [mscorlib]System.Type NHibernate.Linq.Expressions.QuerySourceExpression::get_ElementType()
  } // end of property QuerySourceExpression::ElementType
} // end of class NHibernate.Linq.Expressions.QuerySourceExpression

.class public auto ansi beforefieldinit NHibernate.Linq.Expressions.SqlAggregateFunctionProjection
       extends [NHibernate]NHibernate.Criterion.AggregateProjection
{
  .field private class [mscorlib]System.Type '<ReturnType>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private object[] '<ParameterValues>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32 '<PropertyPosition>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string functionName,
                               string propertyName) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldnull
    IL_0004:  call       instance void NHibernate.Linq.Expressions.SqlAggregateFunctionProjection::.ctor(string,
                                                                                                         string,
                                                                                                         class [mscorlib]System.Type)
    IL_0009:  nop
    IL_000a:  nop
    IL_000b:  nop
    IL_000c:  ret
  } // end of method SqlAggregateFunctionProjection::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string functionName,
                               string propertyName,
                               class [mscorlib]System.Type returnType) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  ldnull
    IL_0005:  call       instance void NHibernate.Linq.Expressions.SqlAggregateFunctionProjection::.ctor(string,
                                                                                                         string,
                                                                                                         class [mscorlib]System.Type,
                                                                                                         object[])
    IL_000a:  nop
    IL_000b:  nop
    IL_000c:  nop
    IL_000d:  ret
  } // end of method SqlAggregateFunctionProjection::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string functionName,
                               string propertyName,
                               class [mscorlib]System.Type returnType,
                               object[] paramValues) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldc.i4.0
    IL_0004:  ldarg.3
    IL_0005:  ldarg.s    paramValues
    IL_0007:  call       instance void NHibernate.Linq.Expressions.SqlAggregateFunctionProjection::.ctor(string,
                                                                                                         string,
                                                                                                         int32,
                                                                                                         class [mscorlib]System.Type,
                                                                                                         object[])
    IL_000c:  nop
    IL_000d:  nop
    IL_000e:  nop
    IL_000f:  ret
  } // end of method SqlAggregateFunctionProjection::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string functionName,
                               string propertyName,
                               int32 propertyPosition,
                               class [mscorlib]System.Type returnType,
                               object[] paramValues) cil managed
  {
    // Code size       38 (0x26)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void [NHibernate]NHibernate.Criterion.AggregateProjection::.ctor(string,
                                                                                                   string)
    IL_0008:  nop
    IL_0009:  nop
    IL_000a:  ldarg.0
    IL_000b:  ldarg.s    returnType
    IL_000d:  call       instance void NHibernate.Linq.Expressions.SqlAggregateFunctionProjection::set_ReturnType(class [mscorlib]System.Type)
    IL_0012:  nop
    IL_0013:  ldarg.0
    IL_0014:  ldarg.s    paramValues
    IL_0016:  call       instance void NHibernate.Linq.Expressions.SqlAggregateFunctionProjection::set_ParameterValues(object[])
    IL_001b:  nop
    IL_001c:  ldarg.0
    IL_001d:  ldarg.3
    IL_001e:  call       instance void NHibernate.Linq.Expressions.SqlAggregateFunctionProjection::set_PropertyPosition(int32)
    IL_0023:  nop
    IL_0024:  nop
    IL_0025:  ret
  } // end of method SqlAggregateFunctionProjection::.ctor

  .method public hidebysig specialname instance class [mscorlib]System.Type 
          get_ReturnType() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       11 (0xb)
    .maxstack  1
    .locals init (class [mscorlib]System.Type V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Type NHibernate.Linq.Expressions.SqlAggregateFunctionProjection::'<ReturnType>k__BackingField'
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method SqlAggregateFunctionProjection::get_ReturnType

  .method private hidebysig specialname instance void 
          set_ReturnType(class [mscorlib]System.Type 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [mscorlib]System.Type NHibernate.Linq.Expressions.SqlAggregateFunctionProjection::'<ReturnType>k__BackingField'
    IL_0007:  ret
  } // end of method SqlAggregateFunctionProjection::set_ReturnType

  .method public hidebysig specialname instance object[] 
          get_ParameterValues() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       11 (0xb)
    .maxstack  1
    .locals init (object[] V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      object[] NHibernate.Linq.Expressions.SqlAggregateFunctionProjection::'<ParameterValues>k__BackingField'
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method SqlAggregateFunctionProjection::get_ParameterValues

  .method private hidebysig specialname instance void 
          set_ParameterValues(object[] 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      object[] NHibernate.Linq.Expressions.SqlAggregateFunctionProjection::'<ParameterValues>k__BackingField'
    IL_0007:  ret
  } // end of method SqlAggregateFunctionProjection::set_ParameterValues

  .method public hidebysig specialname instance int32 
          get_PropertyPosition() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       11 (0xb)
    .maxstack  1
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 NHibernate.Linq.Expressions.SqlAggregateFunctionProjection::'<PropertyPosition>k__BackingField'
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method SqlAggregateFunctionProjection::get_PropertyPosition

  .method private hidebysig specialname instance void 
          set_PropertyPosition(int32 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 NHibernate.Linq.Expressions.SqlAggregateFunctionProjection::'<PropertyPosition>k__BackingField'
    IL_0007:  ret
  } // end of method SqlAggregateFunctionProjection::set_PropertyPosition

  .method public hidebysig virtual instance class [NHibernate]NHibernate.Type.IType[] 
          GetTypes(class [NHibernate]NHibernate.ICriteria criteria,
                   class [NHibernate]NHibernate.Criterion.ICriteriaQuery criteriaQuery) cil managed
  {
    // Code size       58 (0x3a)
    .maxstack  3
    .locals init (class [NHibernate]NHibernate.Type.IType[] V_0,
             bool V_1,
             class [NHibernate]NHibernate.Type.IType[] V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [mscorlib]System.Type NHibernate.Linq.Expressions.SqlAggregateFunctionProjection::get_ReturnType()
    IL_0007:  ldnull
    IL_0008:  ceq
    IL_000a:  stloc.1
    IL_000b:  ldloc.1
    IL_000c:  brtrue.s   IL_002d

    IL_000e:  nop
    IL_000f:  ldc.i4.1
    IL_0010:  newarr     [NHibernate]NHibernate.Type.IType
    IL_0015:  stloc.2
    IL_0016:  ldloc.2
    IL_0017:  ldc.i4.0
    IL_0018:  ldarg.0
    IL_0019:  call       instance class [mscorlib]System.Type NHibernate.Linq.Expressions.SqlAggregateFunctionProjection::get_ReturnType()
    IL_001e:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_0023:  call       class [NHibernate]NHibernate.Type.IType [NHibernate]NHibernate.Type.TypeFactory::HeuristicType(string)
    IL_0028:  stelem.ref
    IL_0029:  ldloc.2
    IL_002a:  stloc.0
    IL_002b:  br.s       IL_0038

    IL_002d:  ldarg.0
    IL_002e:  ldarg.1
    IL_002f:  ldarg.2
    IL_0030:  call       instance class [NHibernate]NHibernate.Type.IType[] [NHibernate]NHibernate.Criterion.AggregateProjection::GetTypes(class [NHibernate]NHibernate.ICriteria,
                                                                                                                                           class [NHibernate]NHibernate.Criterion.ICriteriaQuery)
    IL_0035:  stloc.0
    IL_0036:  br.s       IL_0038

    IL_0038:  ldloc.0
    IL_0039:  ret
  } // end of method SqlAggregateFunctionProjection::GetTypes

  .method public hidebysig virtual instance class [NHibernate]NHibernate.SqlCommand.SqlString 
          ToSqlString(class [NHibernate]NHibernate.ICriteria criteria,
                      int32 loc,
                      class [NHibernate]NHibernate.Criterion.ICriteriaQuery criteriaQuery,
                      class [mscorlib]System.Collections.Generic.IDictionary`2<string,class [NHibernate]NHibernate.IFilter> enabledFilter) cil managed
  {
    // Code size       341 (0x155)
    .maxstack  5
    .locals init (class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder V_0,
             bool V_1,
             bool V_2,
             int32 V_3,
             class [NHibernate]NHibernate.SqlCommand.SqlString V_4,
             bool V_5)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       instance object[] NHibernate.Linq.Expressions.SqlAggregateFunctionProjection::get_ParameterValues()
    IL_0007:  brfalse.s  IL_0019

    IL_0009:  ldarg.0
    IL_000a:  call       instance object[] NHibernate.Linq.Expressions.SqlAggregateFunctionProjection::get_ParameterValues()
    IL_000f:  ldlen
    IL_0010:  conv.i4
    IL_0011:  ldc.i4.0
    IL_0012:  cgt
    IL_0014:  ldc.i4.0
    IL_0015:  ceq
    IL_0017:  br.s       IL_001a

    IL_0019:  ldc.i4.1
    IL_001a:  stloc.s    V_5
    IL_001c:  ldloc.s    V_5
    IL_001e:  brtrue     IL_0143

    IL_0023:  nop
    IL_0024:  newobj     instance void [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::.ctor()
    IL_0029:  stloc.0
    IL_002a:  ldloc.0
    IL_002b:  ldarg.0
    IL_002c:  ldfld      string [NHibernate]NHibernate.Criterion.AggregateProjection::aggregate
    IL_0031:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::Add(string)
    IL_0036:  ldstr      "("
    IL_003b:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::Add(string)
    IL_0040:  pop
    IL_0041:  ldc.i4.0
    IL_0042:  stloc.1
    IL_0043:  ldc.i4.0
    IL_0044:  stloc.2
    IL_0045:  ldc.i4.0
    IL_0046:  stloc.3
    IL_0047:  br         IL_00d2

    IL_004c:  nop
    IL_004d:  ldarg.0
    IL_004e:  call       instance int32 NHibernate.Linq.Expressions.SqlAggregateFunctionProjection::get_PropertyPosition()
    IL_0053:  ldloc.3
    IL_0054:  ceq
    IL_0056:  ldc.i4.0
    IL_0057:  ceq
    IL_0059:  stloc.s    V_5
    IL_005b:  ldloc.s    V_5
    IL_005d:  brtrue.s   IL_009c

    IL_005f:  nop
    IL_0060:  ldloc.3
    IL_0061:  ldc.i4.0
    IL_0062:  cgt
    IL_0064:  ldc.i4.0
    IL_0065:  ceq
    IL_0067:  stloc.s    V_5
    IL_0069:  ldloc.s    V_5
    IL_006b:  brtrue.s   IL_0079

    IL_006d:  ldloc.0
    IL_006e:  ldstr      ", "
    IL_0073:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::Add(string)
    IL_0078:  pop
    IL_0079:  ldloc.0
    IL_007a:  ldarg.3
    IL_007b:  ldarg.1
    IL_007c:  ldarg.0
    IL_007d:  ldfld      string [NHibernate]NHibernate.Criterion.AggregateProjection::propertyName
    IL_0082:  callvirt   instance string [NHibernate]NHibernate.Criterion.ICriteriaQuery::GetColumn(class [NHibernate]NHibernate.ICriteria,
                                                                                                    string)
    IL_0087:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::Add(string)
    IL_008c:  ldstr      ", "
    IL_0091:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::Add(string)
    IL_0096:  pop
    IL_0097:  ldc.i4.1
    IL_0098:  stloc.1
    IL_0099:  nop
    IL_009a:  br.s       IL_00b7

    IL_009c:  ldloc.3
    IL_009d:  ldc.i4.0
    IL_009e:  cgt
    IL_00a0:  ldc.i4.0
    IL_00a1:  ceq
    IL_00a3:  stloc.s    V_5
    IL_00a5:  ldloc.s    V_5
    IL_00a7:  brtrue.s   IL_00b7

    IL_00a9:  nop
    IL_00aa:  ldloc.0
    IL_00ab:  ldstr      ", "
    IL_00b0:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::Add(string)
    IL_00b5:  pop
    IL_00b6:  nop
    IL_00b7:  ldloc.0
    IL_00b8:  ldarg.0
    IL_00b9:  call       instance object[] NHibernate.Linq.Expressions.SqlAggregateFunctionProjection::get_ParameterValues()
    IL_00be:  ldloc.3
    IL_00bf:  ldelem.ref
    IL_00c0:  call       string NHibernate.Linq.Util.LinqUtil::SqlEncode(object)
    IL_00c5:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::Add(string)
    IL_00ca:  pop
    IL_00cb:  ldc.i4.1
    IL_00cc:  stloc.2
    IL_00cd:  nop
    IL_00ce:  ldloc.3
    IL_00cf:  ldc.i4.1
    IL_00d0:  add
    IL_00d1:  stloc.3
    IL_00d2:  ldloc.3
    IL_00d3:  ldarg.0
    IL_00d4:  call       instance object[] NHibernate.Linq.Expressions.SqlAggregateFunctionProjection::get_ParameterValues()
    IL_00d9:  ldlen
    IL_00da:  conv.i4
    IL_00db:  clt
    IL_00dd:  stloc.s    V_5
    IL_00df:  ldloc.s    V_5
    IL_00e1:  brtrue     IL_004c

    IL_00e6:  ldloc.1
    IL_00e7:  stloc.s    V_5
    IL_00e9:  ldloc.s    V_5
    IL_00eb:  brtrue.s   IL_0119

    IL_00ed:  nop
    IL_00ee:  ldloc.2
    IL_00ef:  ldc.i4.0
    IL_00f0:  ceq
    IL_00f2:  stloc.s    V_5
    IL_00f4:  ldloc.s    V_5
    IL_00f6:  brtrue.s   IL_0104

    IL_00f8:  ldloc.0
    IL_00f9:  ldstr      ", "
    IL_00fe:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::Add(string)
    IL_0103:  pop
    IL_0104:  ldloc.0
    IL_0105:  ldarg.3
    IL_0106:  ldarg.1
    IL_0107:  ldarg.0
    IL_0108:  ldfld      string [NHibernate]NHibernate.Criterion.AggregateProjection::propertyName
    IL_010d:  callvirt   instance string [NHibernate]NHibernate.Criterion.ICriteriaQuery::GetColumn(class [NHibernate]NHibernate.ICriteria,
                                                                                                    string)
    IL_0112:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::Add(string)
    IL_0117:  pop
    IL_0118:  nop
    IL_0119:  ldloc.0
    IL_011a:  ldstr      ") as y"
    IL_011f:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::Add(string)
    IL_0124:  ldarga.s   loc
    IL_0126:  call       instance string [mscorlib]System.Int32::ToString()
    IL_012b:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::Add(string)
    IL_0130:  ldstr      "_"
    IL_0135:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::Add(string)
    IL_013a:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlString [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::ToSqlString()
    IL_013f:  stloc.s    V_4
    IL_0141:  br.s       IL_0152

    IL_0143:  ldarg.0
    IL_0144:  ldarg.1
    IL_0145:  ldarg.2
    IL_0146:  ldarg.3
    IL_0147:  ldarg.s    enabledFilter
    IL_0149:  call       instance class [NHibernate]NHibernate.SqlCommand.SqlString [NHibernate]NHibernate.Criterion.AggregateProjection::ToSqlString(class [NHibernate]NHibernate.ICriteria,
                                                                                                                                                      int32,
                                                                                                                                                      class [NHibernate]NHibernate.Criterion.ICriteriaQuery,
                                                                                                                                                      class [mscorlib]System.Collections.Generic.IDictionary`2<string,class [NHibernate]NHibernate.IFilter>)
    IL_014e:  stloc.s    V_4
    IL_0150:  br.s       IL_0152

    IL_0152:  ldloc.s    V_4
    IL_0154:  ret
  } // end of method SqlAggregateFunctionProjection::ToSqlString

  .property instance class [mscorlib]System.Type
          ReturnType()
  {
    .set instance void NHibernate.Linq.Expressions.SqlAggregateFunctionProjection::set_ReturnType(class [mscorlib]System.Type)
    .get instance class [mscorlib]System.Type NHibernate.Linq.Expressions.SqlAggregateFunctionProjection::get_ReturnType()
  } // end of property SqlAggregateFunctionProjection::ReturnType
  .property instance object[] ParameterValues()
  {
    .set instance void NHibernate.Linq.Expressions.SqlAggregateFunctionProjection::set_ParameterValues(object[])
    .get instance object[] NHibernate.Linq.Expressions.SqlAggregateFunctionProjection::get_ParameterValues()
  } // end of property SqlAggregateFunctionProjection::ParameterValues
  .property instance int32 PropertyPosition()
  {
    .get instance int32 NHibernate.Linq.Expressions.SqlAggregateFunctionProjection::get_PropertyPosition()
    .set instance void NHibernate.Linq.Expressions.SqlAggregateFunctionProjection::set_PropertyPosition(int32)
  } // end of property SqlAggregateFunctionProjection::PropertyPosition
} // end of class NHibernate.Linq.Expressions.SqlAggregateFunctionProjection

.class public auto ansi beforefieldinit NHibernate.Linq.Expressions.SqlFunctionAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 40 00 00 00 02 00 54 02 09 49 6E 68 65 72   // ..@.....T..Inher
                                                                                                                         69 74 65 64 00 54 02 0D 41 6C 6C 6F 77 4D 75 6C   // ited.T..AllowMul
                                                                                                                         74 69 70 6C 65 00 )                               // tiple.
  .field private string '<Owner>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32 '<PropertyPosition>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  nop
    IL_0009:  ret
  } // end of method SqlFunctionAttribute::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string owner) cil managed
  {
    // Code size       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  call       instance void NHibernate.Linq.Expressions.SqlFunctionAttribute::set_Owner(string)
    IL_000f:  nop
    IL_0010:  nop
    IL_0011:  ret
  } // end of method SqlFunctionAttribute::.ctor

  .method public hidebysig specialname instance string 
          get_Owner() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       11 (0xb)
    .maxstack  1
    .locals init (string V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string NHibernate.Linq.Expressions.SqlFunctionAttribute::'<Owner>k__BackingField'
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method SqlFunctionAttribute::get_Owner

  .method public hidebysig specialname instance void 
          set_Owner(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string NHibernate.Linq.Expressions.SqlFunctionAttribute::'<Owner>k__BackingField'
    IL_0007:  ret
  } // end of method SqlFunctionAttribute::set_Owner

  .method public hidebysig specialname instance int32 
          get_PropertyPosition() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       11 (0xb)
    .maxstack  1
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 NHibernate.Linq.Expressions.SqlFunctionAttribute::'<PropertyPosition>k__BackingField'
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method SqlFunctionAttribute::get_PropertyPosition

  .method public hidebysig specialname instance void 
          set_PropertyPosition(int32 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 NHibernate.Linq.Expressions.SqlFunctionAttribute::'<PropertyPosition>k__BackingField'
    IL_0007:  ret
  } // end of method SqlFunctionAttribute::set_PropertyPosition

  .property instance string Owner()
  {
    .get instance string NHibernate.Linq.Expressions.SqlFunctionAttribute::get_Owner()
    .set instance void NHibernate.Linq.Expressions.SqlFunctionAttribute::set_Owner(string)
  } // end of property SqlFunctionAttribute::Owner
  .property instance int32 PropertyPosition()
  {
    .get instance int32 NHibernate.Linq.Expressions.SqlFunctionAttribute::get_PropertyPosition()
    .set instance void NHibernate.Linq.Expressions.SqlFunctionAttribute::set_PropertyPosition(int32)
  } // end of property SqlFunctionAttribute::PropertyPosition
} // end of class NHibernate.Linq.Expressions.SqlFunctionAttribute

.class public auto ansi beforefieldinit NHibernate.Linq.Expressions.SqlFunctionExpression
       extends [mscorlib]System.Object
       implements [NHibernate]NHibernate.Criterion.ICriterion
{
  .field private string op
  .field private class NHibernate.Linq.Expressions.SqlFunctionExpression '<RightFunction>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [NHibernate]NHibernate.Criterion.ICriterion '<InnerCriterion>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<FunctionName>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [mscorlib]System.Type '<ReturnType>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private object[] '<ParameterValues>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [mscorlib]System.Type[] '<ParameterTypes>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32 '<PropertyPosition>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string functionName,
                               class [mscorlib]System.Type returnType,
                               class [NHibernate]NHibernate.Criterion.ICriterion innerCriterion) cil managed
  {
    // Code size       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldnull
    IL_0004:  ldnull
    IL_0005:  ldarg.3
    IL_0006:  ldc.i4.0
    IL_0007:  ldnull
    IL_0008:  call       instance void NHibernate.Linq.Expressions.SqlFunctionExpression::.ctor(string,
                                                                                                class [mscorlib]System.Type,
                                                                                                object[],
                                                                                                class [mscorlib]System.Type[],
                                                                                                class [NHibernate]NHibernate.Criterion.ICriterion,
                                                                                                int32,
                                                                                                class NHibernate.Linq.Expressions.SqlFunctionExpression)
    IL_000d:  nop
    IL_000e:  nop
    IL_000f:  nop
    IL_0010:  ret
  } // end of method SqlFunctionExpression::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string functionName,
                               class [mscorlib]System.Type returnType,
                               object[] paramValues,
                               class [mscorlib]System.Type[] paramTypes,
                               class [NHibernate]NHibernate.Criterion.ICriterion innerCriterion) cil managed
  {
    // Code size       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  ldarg.s    paramTypes
    IL_0006:  ldarg.s    innerCriterion
    IL_0008:  ldc.i4.0
    IL_0009:  ldnull
    IL_000a:  call       instance void NHibernate.Linq.Expressions.SqlFunctionExpression::.ctor(string,
                                                                                                class [mscorlib]System.Type,
                                                                                                object[],
                                                                                                class [mscorlib]System.Type[],
                                                                                                class [NHibernate]NHibernate.Criterion.ICriterion,
                                                                                                int32,
                                                                                                class NHibernate.Linq.Expressions.SqlFunctionExpression)
    IL_000f:  nop
    IL_0010:  nop
    IL_0011:  nop
    IL_0012:  ret
  } // end of method SqlFunctionExpression::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string functionName,
                               class [mscorlib]System.Type returnType,
                               object[] paramValues,
                               class [mscorlib]System.Type[] paramTypes,
                               class [NHibernate]NHibernate.Criterion.ICriterion innerCriterion,
                               int32 propertyPosition) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  ldarg.s    paramTypes
    IL_0006:  ldarg.s    innerCriterion
    IL_0008:  ldarg.s    propertyPosition
    IL_000a:  ldnull
    IL_000b:  call       instance void NHibernate.Linq.Expressions.SqlFunctionExpression::.ctor(string,
                                                                                                class [mscorlib]System.Type,
                                                                                                object[],
                                                                                                class [mscorlib]System.Type[],
                                                                                                class [NHibernate]NHibernate.Criterion.ICriterion,
                                                                                                int32,
                                                                                                class NHibernate.Linq.Expressions.SqlFunctionExpression)
    IL_0010:  nop
    IL_0011:  nop
    IL_0012:  nop
    IL_0013:  ret
  } // end of method SqlFunctionExpression::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string functionName,
                               class [mscorlib]System.Type returnType,
                               object[] paramValues,
                               class [mscorlib]System.Type[] paramTypes,
                               class [NHibernate]NHibernate.Criterion.ICriterion innerCriterion,
                               int32 propertyPosition,
                               class NHibernate.Linq.Expressions.SqlFunctionExpression rightFunction) cil managed
  {
    // Code size       70 (0x46)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  call       instance void NHibernate.Linq.Expressions.SqlFunctionExpression::set_FunctionName(string)
    IL_000f:  nop
    IL_0010:  ldarg.0
    IL_0011:  ldarg.2
    IL_0012:  call       instance void NHibernate.Linq.Expressions.SqlFunctionExpression::set_ReturnType(class [mscorlib]System.Type)
    IL_0017:  nop
    IL_0018:  ldarg.0
    IL_0019:  ldarg.3
    IL_001a:  call       instance void NHibernate.Linq.Expressions.SqlFunctionExpression::set_ParameterValues(object[])
    IL_001f:  nop
    IL_0020:  ldarg.0
    IL_0021:  ldarg.s    paramTypes
    IL_0023:  call       instance void NHibernate.Linq.Expressions.SqlFunctionExpression::set_ParameterTypes(class [mscorlib]System.Type[])
    IL_0028:  nop
    IL_0029:  ldarg.0
    IL_002a:  ldarg.s    innerCriterion
    IL_002c:  call       instance void NHibernate.Linq.Expressions.SqlFunctionExpression::set_InnerCriterion(class [NHibernate]NHibernate.Criterion.ICriterion)
    IL_0031:  nop
    IL_0032:  ldarg.0
    IL_0033:  ldarg.s    propertyPosition
    IL_0035:  call       instance void NHibernate.Linq.Expressions.SqlFunctionExpression::set_PropertyPosition(int32)
    IL_003a:  nop
    IL_003b:  ldarg.0
    IL_003c:  ldarg.s    rightFunction
    IL_003e:  call       instance void NHibernate.Linq.Expressions.SqlFunctionExpression::set_RightFunction(class NHibernate.Linq.Expressions.SqlFunctionExpression)
    IL_0043:  nop
    IL_0044:  nop
    IL_0045:  ret
  } // end of method SqlFunctionExpression::.ctor

  .method private hidebysig specialname instance class NHibernate.Linq.Expressions.SqlFunctionExpression 
          get_RightFunction() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       11 (0xb)
    .maxstack  1
    .locals init (class NHibernate.Linq.Expressions.SqlFunctionExpression V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class NHibernate.Linq.Expressions.SqlFunctionExpression NHibernate.Linq.Expressions.SqlFunctionExpression::'<RightFunction>k__BackingField'
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method SqlFunctionExpression::get_RightFunction

  .method private hidebysig specialname instance void 
          set_RightFunction(class NHibernate.Linq.Expressions.SqlFunctionExpression 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class NHibernate.Linq.Expressions.SqlFunctionExpression NHibernate.Linq.Expressions.SqlFunctionExpression::'<RightFunction>k__BackingField'
    IL_0007:  ret
  } // end of method SqlFunctionExpression::set_RightFunction

  .method public hidebysig specialname instance class [NHibernate]NHibernate.Criterion.ICriterion 
          get_InnerCriterion() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       11 (0xb)
    .maxstack  1
    .locals init (class [NHibernate]NHibernate.Criterion.ICriterion V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Expressions.SqlFunctionExpression::'<InnerCriterion>k__BackingField'
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method SqlFunctionExpression::get_InnerCriterion

  .method public hidebysig specialname instance void 
          set_InnerCriterion(class [NHibernate]NHibernate.Criterion.ICriterion 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Expressions.SqlFunctionExpression::'<InnerCriterion>k__BackingField'
    IL_0007:  ret
  } // end of method SqlFunctionExpression::set_InnerCriterion

  .method public hidebysig specialname instance string 
          get_FunctionName() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       11 (0xb)
    .maxstack  1
    .locals init (string V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string NHibernate.Linq.Expressions.SqlFunctionExpression::'<FunctionName>k__BackingField'
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method SqlFunctionExpression::get_FunctionName

  .method private hidebysig specialname instance void 
          set_FunctionName(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string NHibernate.Linq.Expressions.SqlFunctionExpression::'<FunctionName>k__BackingField'
    IL_0007:  ret
  } // end of method SqlFunctionExpression::set_FunctionName

  .method public hidebysig specialname instance class [mscorlib]System.Type 
          get_ReturnType() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       11 (0xb)
    .maxstack  1
    .locals init (class [mscorlib]System.Type V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Type NHibernate.Linq.Expressions.SqlFunctionExpression::'<ReturnType>k__BackingField'
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method SqlFunctionExpression::get_ReturnType

  .method private hidebysig specialname instance void 
          set_ReturnType(class [mscorlib]System.Type 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [mscorlib]System.Type NHibernate.Linq.Expressions.SqlFunctionExpression::'<ReturnType>k__BackingField'
    IL_0007:  ret
  } // end of method SqlFunctionExpression::set_ReturnType

  .method public hidebysig specialname instance object[] 
          get_ParameterValues() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       11 (0xb)
    .maxstack  1
    .locals init (object[] V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      object[] NHibernate.Linq.Expressions.SqlFunctionExpression::'<ParameterValues>k__BackingField'
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method SqlFunctionExpression::get_ParameterValues

  .method private hidebysig specialname instance void 
          set_ParameterValues(object[] 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      object[] NHibernate.Linq.Expressions.SqlFunctionExpression::'<ParameterValues>k__BackingField'
    IL_0007:  ret
  } // end of method SqlFunctionExpression::set_ParameterValues

  .method public hidebysig specialname instance class [mscorlib]System.Type[] 
          get_ParameterTypes() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       11 (0xb)
    .maxstack  1
    .locals init (class [mscorlib]System.Type[] V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Type[] NHibernate.Linq.Expressions.SqlFunctionExpression::'<ParameterTypes>k__BackingField'
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method SqlFunctionExpression::get_ParameterTypes

  .method private hidebysig specialname instance void 
          set_ParameterTypes(class [mscorlib]System.Type[] 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [mscorlib]System.Type[] NHibernate.Linq.Expressions.SqlFunctionExpression::'<ParameterTypes>k__BackingField'
    IL_0007:  ret
  } // end of method SqlFunctionExpression::set_ParameterTypes

  .method public hidebysig specialname instance int32 
          get_PropertyPosition() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       11 (0xb)
    .maxstack  1
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 NHibernate.Linq.Expressions.SqlFunctionExpression::'<PropertyPosition>k__BackingField'
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method SqlFunctionExpression::get_PropertyPosition

  .method private hidebysig specialname instance void 
          set_PropertyPosition(int32 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 NHibernate.Linq.Expressions.SqlFunctionExpression::'<PropertyPosition>k__BackingField'
    IL_0007:  ret
  } // end of method SqlFunctionExpression::set_PropertyPosition

  .method family hidebysig newslot specialname virtual 
          instance string  get_Op() cil managed
  {
    // Code size       78 (0x4e)
    .maxstack  4
    .locals init (string V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      string NHibernate.Linq.Expressions.SqlFunctionExpression::op
    IL_0007:  call       bool [mscorlib]System.String::IsNullOrEmpty(string)
    IL_000c:  ldc.i4.0
    IL_000d:  ceq
    IL_000f:  stloc.1
    IL_0010:  ldloc.1
    IL_0011:  brtrue.s   IL_0043

    IL_0013:  nop
    IL_0014:  ldarg.0
    IL_0015:  ldarg.0
    IL_0016:  call       instance class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Expressions.SqlFunctionExpression::get_InnerCriterion()
    IL_001b:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_0020:  ldstr      "Op"
    IL_0025:  ldc.i4.s   36
    IL_0027:  callvirt   instance class [mscorlib]System.Reflection.PropertyInfo [mscorlib]System.Type::GetProperty(string,
                                                                                                                    valuetype [mscorlib]System.Reflection.BindingFlags)
    IL_002c:  ldarg.0
    IL_002d:  call       instance class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Expressions.SqlFunctionExpression::get_InnerCriterion()
    IL_0032:  ldnull
    IL_0033:  callvirt   instance object [mscorlib]System.Reflection.PropertyInfo::GetValue(object,
                                                                                            object[])
    IL_0038:  isinst     [mscorlib]System.String
    IL_003d:  stfld      string NHibernate.Linq.Expressions.SqlFunctionExpression::op
    IL_0042:  nop
    IL_0043:  ldarg.0
    IL_0044:  ldfld      string NHibernate.Linq.Expressions.SqlFunctionExpression::op
    IL_0049:  stloc.0
    IL_004a:  br.s       IL_004c

    IL_004c:  ldloc.0
    IL_004d:  ret
  } // end of method SqlFunctionExpression::get_Op

  .method public hidebysig newslot virtual 
          instance class [NHibernate]NHibernate.Engine.TypedValue[] 
          GetTypedValues(class [NHibernate]NHibernate.ICriteria criteria,
                         class [NHibernate]NHibernate.Criterion.ICriteriaQuery criteriaQuery) cil managed
  {
    // Code size       221 (0xdd)
    .maxstack  5
    .locals init (class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Engine.TypedValue> V_0,
             int32 V_1,
             class [NHibernate]NHibernate.Criterion.SimpleExpression V_2,
             class [NHibernate]NHibernate.Engine.TypedValue[] V_3,
             bool V_4)
    IL_0000:  nop
    IL_0001:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Engine.TypedValue>::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  call       instance object[] NHibernate.Linq.Expressions.SqlFunctionExpression::get_ParameterValues()
    IL_000d:  ldnull
    IL_000e:  ceq
    IL_0010:  stloc.s    V_4
    IL_0012:  ldloc.s    V_4
    IL_0014:  brtrue.s   IL_005a

    IL_0016:  nop
    IL_0017:  ldc.i4.0
    IL_0018:  stloc.1
    IL_0019:  br.s       IL_0048

    IL_001b:  nop
    IL_001c:  ldloc.0
    IL_001d:  ldarg.0
    IL_001e:  call       instance class [mscorlib]System.Type[] NHibernate.Linq.Expressions.SqlFunctionExpression::get_ParameterTypes()
    IL_0023:  ldloc.1
    IL_0024:  ldelem.ref
    IL_0025:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_002a:  call       class [NHibernate]NHibernate.Type.IType [NHibernate]NHibernate.Type.TypeFactory::HeuristicType(string)
    IL_002f:  ldarg.0
    IL_0030:  call       instance object[] NHibernate.Linq.Expressions.SqlFunctionExpression::get_ParameterValues()
    IL_0035:  ldloc.1
    IL_0036:  ldelem.ref
    IL_0037:  ldc.i4.0
    IL_0038:  newobj     instance void [NHibernate]NHibernate.Engine.TypedValue::.ctor(class [NHibernate]NHibernate.Type.IType,
                                                                                       object,
                                                                                       valuetype [NHibernate]NHibernate.EntityMode)
    IL_003d:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Engine.TypedValue>::Add(!0)
    IL_0042:  nop
    IL_0043:  nop
    IL_0044:  ldloc.1
    IL_0045:  ldc.i4.1
    IL_0046:  add
    IL_0047:  stloc.1
    IL_0048:  ldloc.1
    IL_0049:  ldarg.0
    IL_004a:  call       instance object[] NHibernate.Linq.Expressions.SqlFunctionExpression::get_ParameterValues()
    IL_004f:  ldlen
    IL_0050:  conv.i4
    IL_0051:  clt
    IL_0053:  stloc.s    V_4
    IL_0055:  ldloc.s    V_4
    IL_0057:  brtrue.s   IL_001b

    IL_0059:  nop
    IL_005a:  ldarg.0
    IL_005b:  call       instance class [mscorlib]System.Type NHibernate.Linq.Expressions.SqlFunctionExpression::get_ReturnType()
    IL_0060:  brfalse.s  IL_0075

    IL_0062:  ldarg.0
    IL_0063:  call       instance class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Expressions.SqlFunctionExpression::get_InnerCriterion()
    IL_0068:  isinst     [NHibernate]NHibernate.Criterion.SimpleExpression
    IL_006d:  ldnull
    IL_006e:  cgt.un
    IL_0070:  ldc.i4.0
    IL_0071:  ceq
    IL_0073:  br.s       IL_0076

    IL_0075:  ldc.i4.1
    IL_0076:  stloc.s    V_4
    IL_0078:  ldloc.s    V_4
    IL_007a:  brtrue.s   IL_00ad

    IL_007c:  nop
    IL_007d:  ldarg.0
    IL_007e:  call       instance class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Expressions.SqlFunctionExpression::get_InnerCriterion()
    IL_0083:  isinst     [NHibernate]NHibernate.Criterion.SimpleExpression
    IL_0088:  stloc.2
    IL_0089:  ldloc.0
    IL_008a:  ldarg.0
    IL_008b:  call       instance class [mscorlib]System.Type NHibernate.Linq.Expressions.SqlFunctionExpression::get_ReturnType()
    IL_0090:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_0095:  call       class [NHibernate]NHibernate.Type.IType [NHibernate]NHibernate.Type.TypeFactory::HeuristicType(string)
    IL_009a:  ldloc.2
    IL_009b:  callvirt   instance object [NHibernate]NHibernate.Criterion.SimpleExpression::get_Value()
    IL_00a0:  ldc.i4.0
    IL_00a1:  newobj     instance void [NHibernate]NHibernate.Engine.TypedValue::.ctor(class [NHibernate]NHibernate.Type.IType,
                                                                                       object,
                                                                                       valuetype [NHibernate]NHibernate.EntityMode)
    IL_00a6:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Engine.TypedValue>::Add(!0)
    IL_00ab:  nop
    IL_00ac:  nop
    IL_00ad:  ldarg.0
    IL_00ae:  call       instance class NHibernate.Linq.Expressions.SqlFunctionExpression NHibernate.Linq.Expressions.SqlFunctionExpression::get_RightFunction()
    IL_00b3:  ldnull
    IL_00b4:  ceq
    IL_00b6:  stloc.s    V_4
    IL_00b8:  ldloc.s    V_4
    IL_00ba:  brtrue.s   IL_00d2

    IL_00bc:  nop
    IL_00bd:  ldloc.0
    IL_00be:  ldarg.0
    IL_00bf:  call       instance class NHibernate.Linq.Expressions.SqlFunctionExpression NHibernate.Linq.Expressions.SqlFunctionExpression::get_RightFunction()
    IL_00c4:  ldarg.1
    IL_00c5:  ldarg.2
    IL_00c6:  callvirt   instance class [NHibernate]NHibernate.Engine.TypedValue[] NHibernate.Linq.Expressions.SqlFunctionExpression::GetTypedValues(class [NHibernate]NHibernate.ICriteria,
                                                                                                                                                     class [NHibernate]NHibernate.Criterion.ICriteriaQuery)
    IL_00cb:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Engine.TypedValue>::AddRange(class [mscorlib]System.Collections.Generic.IEnumerable`1<!0>)
    IL_00d0:  nop
    IL_00d1:  nop
    IL_00d2:  ldloc.0
    IL_00d3:  callvirt   instance !0[] class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Engine.TypedValue>::ToArray()
    IL_00d8:  stloc.3
    IL_00d9:  br.s       IL_00db

    IL_00db:  ldloc.3
    IL_00dc:  ret
  } // end of method SqlFunctionExpression::GetTypedValues

  .method public hidebysig newslot virtual 
          instance class [NHibernate]NHibernate.SqlCommand.SqlString 
          ToSqlString(class [NHibernate]NHibernate.ICriteria criteria,
                      class [NHibernate]NHibernate.Criterion.ICriteriaQuery criteriaQuery,
                      class [mscorlib]System.Collections.Generic.IDictionary`2<string,class [NHibernate]NHibernate.IFilter> enabledFilters) cil managed
  {
    // Code size       252 (0xfc)
    .maxstack  5
    .locals init (class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder V_0,
             string V_1,
             string V_2,
             class [mscorlib]System.Type V_3,
             class [NHibernate]NHibernate.SqlCommand.SqlString V_4,
             bool V_5)
    IL_0000:  nop
    IL_0001:  newobj     instance void [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldnull
    IL_0008:  stloc.1
    IL_0009:  ldnull
    IL_000a:  stloc.2
    IL_000b:  ldarg.0
    IL_000c:  call       instance class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Expressions.SqlFunctionExpression::get_InnerCriterion()
    IL_0011:  isinst     [NHibernate]NHibernate.Criterion.SimpleExpression
    IL_0016:  ldnull
    IL_0017:  cgt.un
    IL_0019:  ldc.i4.0
    IL_001a:  ceq
    IL_001c:  stloc.s    V_5
    IL_001e:  ldloc.s    V_5
    IL_0020:  brtrue.s   IL_0037

    IL_0022:  nop
    IL_0023:  ldarg.0
    IL_0024:  call       instance class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Expressions.SqlFunctionExpression::get_InnerCriterion()
    IL_0029:  castclass  [NHibernate]NHibernate.Criterion.SimpleExpression
    IL_002e:  callvirt   instance string [NHibernate]NHibernate.Criterion.SimpleExpression::get_PropertyName()
    IL_0033:  stloc.1
    IL_0034:  nop
    IL_0035:  br.s       IL_0097

    IL_0037:  ldarg.0
    IL_0038:  call       instance class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Expressions.SqlFunctionExpression::get_InnerCriterion()
    IL_003d:  isinst     [NHibernate]NHibernate.Criterion.PropertyExpression
    IL_0042:  ldnull
    IL_0043:  cgt.un
    IL_0045:  ldc.i4.0
    IL_0046:  ceq
    IL_0048:  stloc.s    V_5
    IL_004a:  ldloc.s    V_5
    IL_004c:  brtrue.s   IL_0097

    IL_004e:  nop
    IL_004f:  ldtoken    [NHibernate]NHibernate.Criterion.PropertyExpression
    IL_0054:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0059:  stloc.3
    IL_005a:  ldloc.3
    IL_005b:  ldstr      "_lhsPropertyName"
    IL_0060:  ldc.i4.s   36
    IL_0062:  callvirt   instance class [mscorlib]System.Reflection.FieldInfo [mscorlib]System.Type::GetField(string,
                                                                                                              valuetype [mscorlib]System.Reflection.BindingFlags)
    IL_0067:  ldarg.0
    IL_0068:  call       instance class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Expressions.SqlFunctionExpression::get_InnerCriterion()
    IL_006d:  callvirt   instance object [mscorlib]System.Reflection.FieldInfo::GetValue(object)
    IL_0072:  isinst     [mscorlib]System.String
    IL_0077:  stloc.1
    IL_0078:  ldloc.3
    IL_0079:  ldstr      "_rhsPropertyName"
    IL_007e:  ldc.i4.s   36
    IL_0080:  callvirt   instance class [mscorlib]System.Reflection.FieldInfo [mscorlib]System.Type::GetField(string,
                                                                                                              valuetype [mscorlib]System.Reflection.BindingFlags)
    IL_0085:  ldarg.0
    IL_0086:  call       instance class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Expressions.SqlFunctionExpression::get_InnerCriterion()
    IL_008b:  callvirt   instance object [mscorlib]System.Reflection.FieldInfo::GetValue(object)
    IL_0090:  isinst     [mscorlib]System.String
    IL_0095:  stloc.2
    IL_0096:  nop
    IL_0097:  ldarg.0
    IL_0098:  ldloc.1
    IL_0099:  ldloc.0
    IL_009a:  ldarg.1
    IL_009b:  ldarg.2
    IL_009c:  call       instance void NHibernate.Linq.Expressions.SqlFunctionExpression::AddParameters(string,
                                                                                                        class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder,
                                                                                                        class [NHibernate]NHibernate.ICriteria,
                                                                                                        class [NHibernate]NHibernate.Criterion.ICriteriaQuery)
    IL_00a1:  nop
    IL_00a2:  ldloc.0
    IL_00a3:  ldstr      " "
    IL_00a8:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::Add(string)
    IL_00ad:  ldarg.0
    IL_00ae:  callvirt   instance string NHibernate.Linq.Expressions.SqlFunctionExpression::get_Op()
    IL_00b3:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::Add(string)
    IL_00b8:  ldstr      " "
    IL_00bd:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::Add(string)
    IL_00c2:  pop
    IL_00c3:  ldarg.0
    IL_00c4:  call       instance class NHibernate.Linq.Expressions.SqlFunctionExpression NHibernate.Linq.Expressions.SqlFunctionExpression::get_RightFunction()
    IL_00c9:  ldnull
    IL_00ca:  ceq
    IL_00cc:  stloc.s    V_5
    IL_00ce:  ldloc.s    V_5
    IL_00d0:  brtrue.s   IL_00e6

    IL_00d2:  nop
    IL_00d3:  ldarg.0
    IL_00d4:  call       instance class NHibernate.Linq.Expressions.SqlFunctionExpression NHibernate.Linq.Expressions.SqlFunctionExpression::get_RightFunction()
    IL_00d9:  ldloc.2
    IL_00da:  ldloc.0
    IL_00db:  ldarg.1
    IL_00dc:  ldarg.2
    IL_00dd:  callvirt   instance void NHibernate.Linq.Expressions.SqlFunctionExpression::AddParameters(string,
                                                                                                        class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder,
                                                                                                        class [NHibernate]NHibernate.ICriteria,
                                                                                                        class [NHibernate]NHibernate.Criterion.ICriteriaQuery)
    IL_00e2:  nop
    IL_00e3:  nop
    IL_00e4:  br.s       IL_00ef

    IL_00e6:  nop
    IL_00e7:  ldloc.0
    IL_00e8:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::AddParameter()
    IL_00ed:  pop
    IL_00ee:  nop
    IL_00ef:  ldloc.0
    IL_00f0:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlString [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::ToSqlString()
    IL_00f5:  stloc.s    V_4
    IL_00f7:  br.s       IL_00f9

    IL_00f9:  ldloc.s    V_4
    IL_00fb:  ret
  } // end of method SqlFunctionExpression::ToSqlString

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.Criterion.IProjection[] 
          GetProjections() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (class [NHibernate]NHibernate.Criterion.IProjection[] V_0)
    IL_0000:  nop
    IL_0001:  ldnull
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlFunctionExpression::GetProjections

  .method private hidebysig instance void 
          AddParameters(string propertyName,
                        class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder sql,
                        class [NHibernate]NHibernate.ICriteria criteria,
                        class [NHibernate]NHibernate.Criterion.ICriteriaQuery criteriaQuery) cil managed
  {
    // Code size       248 (0xf8)
    .maxstack  4
    .locals init (bool V_0,
             bool V_1,
             int32 V_2,
             bool V_3)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  ldc.i4.0
    IL_0004:  stloc.1
    IL_0005:  ldarg.2
    IL_0006:  ldarg.0
    IL_0007:  call       instance string NHibernate.Linq.Expressions.SqlFunctionExpression::get_FunctionName()
    IL_000c:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::Add(string)
    IL_0011:  ldstr      "("
    IL_0016:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::Add(string)
    IL_001b:  pop
    IL_001c:  ldarg.0
    IL_001d:  call       instance object[] NHibernate.Linq.Expressions.SqlFunctionExpression::get_ParameterValues()
    IL_0022:  brfalse.s  IL_0034

    IL_0024:  ldarg.0
    IL_0025:  call       instance object[] NHibernate.Linq.Expressions.SqlFunctionExpression::get_ParameterValues()
    IL_002a:  ldlen
    IL_002b:  conv.i4
    IL_002c:  ldc.i4.0
    IL_002d:  cgt
    IL_002f:  ldc.i4.0
    IL_0030:  ceq
    IL_0032:  br.s       IL_0035

    IL_0034:  ldc.i4.1
    IL_0035:  stloc.3
    IL_0036:  ldloc.3
    IL_0037:  brtrue     IL_00c0

    IL_003c:  nop
    IL_003d:  ldc.i4.0
    IL_003e:  stloc.2
    IL_003f:  br.s       IL_00b0

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  call       instance int32 NHibernate.Linq.Expressions.SqlFunctionExpression::get_PropertyPosition()
    IL_0048:  ldloc.2
    IL_0049:  ceq
    IL_004b:  ldc.i4.0
    IL_004c:  ceq
    IL_004e:  stloc.3
    IL_004f:  ldloc.3
    IL_0050:  brtrue.s   IL_0089

    IL_0052:  nop
    IL_0053:  ldloc.2
    IL_0054:  ldc.i4.0
    IL_0055:  cgt
    IL_0057:  ldc.i4.0
    IL_0058:  ceq
    IL_005a:  stloc.3
    IL_005b:  ldloc.3
    IL_005c:  brtrue.s   IL_006a

    IL_005e:  ldarg.2
    IL_005f:  ldstr      ", "
    IL_0064:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::Add(string)
    IL_0069:  pop
    IL_006a:  ldarg.2
    IL_006b:  ldarg.s    criteriaQuery
    IL_006d:  ldarg.3
    IL_006e:  ldarg.1
    IL_006f:  callvirt   instance string [NHibernate]NHibernate.Criterion.ICriteriaQuery::GetColumn(class [NHibernate]NHibernate.ICriteria,
                                                                                                    string)
    IL_0074:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::Add(string)
    IL_0079:  ldstr      ", "
    IL_007e:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::Add(string)
    IL_0083:  pop
    IL_0084:  ldc.i4.1
    IL_0085:  stloc.0
    IL_0086:  nop
    IL_0087:  br.s       IL_00a2

    IL_0089:  ldloc.2
    IL_008a:  ldc.i4.0
    IL_008b:  cgt
    IL_008d:  ldc.i4.0
    IL_008e:  ceq
    IL_0090:  stloc.3
    IL_0091:  ldloc.3
    IL_0092:  brtrue.s   IL_00a2

    IL_0094:  nop
    IL_0095:  ldarg.2
    IL_0096:  ldstr      ", "
    IL_009b:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::Add(string)
    IL_00a0:  pop
    IL_00a1:  nop
    IL_00a2:  ldarg.2
    IL_00a3:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::AddParameter()
    IL_00a8:  pop
    IL_00a9:  ldc.i4.1
    IL_00aa:  stloc.1
    IL_00ab:  nop
    IL_00ac:  ldloc.2
    IL_00ad:  ldc.i4.1
    IL_00ae:  add
    IL_00af:  stloc.2
    IL_00b0:  ldloc.2
    IL_00b1:  ldarg.0
    IL_00b2:  call       instance object[] NHibernate.Linq.Expressions.SqlFunctionExpression::get_ParameterValues()
    IL_00b7:  ldlen
    IL_00b8:  conv.i4
    IL_00b9:  clt
    IL_00bb:  stloc.3
    IL_00bc:  ldloc.3
    IL_00bd:  brtrue.s   IL_0041

    IL_00bf:  nop
    IL_00c0:  ldloc.0
    IL_00c1:  stloc.3
    IL_00c2:  ldloc.3
    IL_00c3:  brtrue.s   IL_00eb

    IL_00c5:  nop
    IL_00c6:  ldloc.1
    IL_00c7:  ldc.i4.0
    IL_00c8:  ceq
    IL_00ca:  stloc.3
    IL_00cb:  ldloc.3
    IL_00cc:  brtrue.s   IL_00da

    IL_00ce:  ldarg.2
    IL_00cf:  ldstr      ", "
    IL_00d4:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::Add(string)
    IL_00d9:  pop
    IL_00da:  ldarg.2
    IL_00db:  ldarg.s    criteriaQuery
    IL_00dd:  ldarg.3
    IL_00de:  ldarg.1
    IL_00df:  callvirt   instance string [NHibernate]NHibernate.Criterion.ICriteriaQuery::GetColumn(class [NHibernate]NHibernate.ICriteria,
                                                                                                    string)
    IL_00e4:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::Add(string)
    IL_00e9:  pop
    IL_00ea:  nop
    IL_00eb:  ldarg.2
    IL_00ec:  ldstr      ")"
    IL_00f1:  callvirt   instance class [NHibernate]NHibernate.SqlCommand.SqlStringBuilder [NHibernate]NHibernate.SqlCommand.SqlStringBuilder::Add(string)
    IL_00f6:  pop
    IL_00f7:  ret
  } // end of method SqlFunctionExpression::AddParameters

  .property instance class NHibernate.Linq.Expressions.SqlFunctionExpression
          RightFunction()
  {
    .set instance void NHibernate.Linq.Expressions.SqlFunctionExpression::set_RightFunction(class NHibernate.Linq.Expressions.SqlFunctionExpression)
    .get instance class NHibernate.Linq.Expressions.SqlFunctionExpression NHibernate.Linq.Expressions.SqlFunctionExpression::get_RightFunction()
  } // end of property SqlFunctionExpression::RightFunction
  .property instance class [NHibernate]NHibernate.Criterion.ICriterion
          InnerCriterion()
  {
    .set instance void NHibernate.Linq.Expressions.SqlFunctionExpression::set_InnerCriterion(class [NHibernate]NHibernate.Criterion.ICriterion)
    .get instance class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Expressions.SqlFunctionExpression::get_InnerCriterion()
  } // end of property SqlFunctionExpression::InnerCriterion
  .property instance string FunctionName()
  {
    .get instance string NHibernate.Linq.Expressions.SqlFunctionExpression::get_FunctionName()
    .set instance void NHibernate.Linq.Expressions.SqlFunctionExpression::set_FunctionName(string)
  } // end of property SqlFunctionExpression::FunctionName
  .property instance class [mscorlib]System.Type
          ReturnType()
  {
    .get instance class [mscorlib]System.Type NHibernate.Linq.Expressions.SqlFunctionExpression::get_ReturnType()
    .set instance void NHibernate.Linq.Expressions.SqlFunctionExpression::set_ReturnType(class [mscorlib]System.Type)
  } // end of property SqlFunctionExpression::ReturnType
  .property instance object[] ParameterValues()
  {
    .get instance object[] NHibernate.Linq.Expressions.SqlFunctionExpression::get_ParameterValues()
    .set instance void NHibernate.Linq.Expressions.SqlFunctionExpression::set_ParameterValues(object[])
  } // end of property SqlFunctionExpression::ParameterValues
  .property instance class [mscorlib]System.Type[]
          ParameterTypes()
  {
    .set instance void NHibernate.Linq.Expressions.SqlFunctionExpression::set_ParameterTypes(class [mscorlib]System.Type[])
    .get instance class [mscorlib]System.Type[] NHibernate.Linq.Expressions.SqlFunctionExpression::get_ParameterTypes()
  } // end of property SqlFunctionExpression::ParameterTypes
  .property instance int32 PropertyPosition()
  {
    .set instance void NHibernate.Linq.Expressions.SqlFunctionExpression::set_PropertyPosition(int32)
    .get instance int32 NHibernate.Linq.Expressions.SqlFunctionExpression::get_PropertyPosition()
  } // end of property SqlFunctionExpression::PropertyPosition
  .property instance string Op()
  {
    .get instance string NHibernate.Linq.Expressions.SqlFunctionExpression::get_Op()
  } // end of property SqlFunctionExpression::Op
} // end of class NHibernate.Linq.Expressions.SqlFunctionExpression

.class public abstract auto ansi sealed beforefieldinit NHibernate.Linq.SqlClient.SqlClientExtensions
       extends [mscorlib]System.Object
{
  .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig static int32  Day(class NHibernate.Linq.IDbMethods methods,
                                             valuetype [mscorlib]System.DateTime 'value') cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::Day

  .method public hidebysig static int32  Day(class NHibernate.Linq.IDbMethods methods,
                                             valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.DateTime> 'value') cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::Day

  .method public hidebysig static int32  Month(class NHibernate.Linq.IDbMethods methods,
                                               valuetype [mscorlib]System.DateTime 'value') cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::Month

  .method public hidebysig static int32  Month(class NHibernate.Linq.IDbMethods methods,
                                               valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.DateTime> 'value') cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::Month

  .method public hidebysig static int32  Year(class NHibernate.Linq.IDbMethods methods,
                                              valuetype [mscorlib]System.DateTime 'value') cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::Year

  .method public hidebysig static int32  Year(class NHibernate.Linq.IDbMethods methods,
                                              valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.DateTime> 'value') cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::Year

  .method public hidebysig static int32  Ascii(class NHibernate.Linq.IDbMethods methods,
                                               string 'value') cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::Ascii

  .method public hidebysig static int32  Ascii(class NHibernate.Linq.IDbMethods methods,
                                               char 'value') cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::Ascii

  .method public hidebysig static int32  Ascii(class NHibernate.Linq.IDbMethods methods,
                                               valuetype [mscorlib]System.Nullable`1<char> 'value') cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::Ascii

  .method public hidebysig static char  Char(class NHibernate.Linq.IDbMethods methods,
                                             int32 'value') cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (char V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::Char

  .method public hidebysig static char  Char(class NHibernate.Linq.IDbMethods methods,
                                             valuetype [mscorlib]System.Nullable`1<int32> 'value') cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (char V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::Char

  .method public hidebysig static int32  CharIndex(class NHibernate.Linq.IDbMethods methods,
                                                   string 'value',
                                                   char search) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::CharIndex

  .method public hidebysig static int32  CharIndex(class NHibernate.Linq.IDbMethods methods,
                                                   string 'value',
                                                   char search,
                                                   int32 start) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::CharIndex

  .method public hidebysig static int32  CharIndex(class NHibernate.Linq.IDbMethods methods,
                                                   string 'value',
                                                   string search) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::CharIndex

  .method public hidebysig static int32  CharIndex(class NHibernate.Linq.IDbMethods methods,
                                                   string 'value',
                                                   string search,
                                                   int32 start) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::CharIndex

  .method public hidebysig static string 
          Left(class NHibernate.Linq.IDbMethods methods,
               string 'value',
               int32 length) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldnull
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::Left

  .method public hidebysig static int32  Len(class NHibernate.Linq.IDbMethods methods,
                                             string 'value') cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::Len

  .method public hidebysig static string 
          Lower(class NHibernate.Linq.IDbMethods methods,
                string 'value') cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldnull
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::Lower

  .method public hidebysig static string 
          LTrim(class NHibernate.Linq.IDbMethods methods,
                string 'value') cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldnull
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::LTrim

  .method public hidebysig static string 
          Replace(class NHibernate.Linq.IDbMethods methods,
                  string 'value',
                  string search,
                  string replace) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldnull
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::Replace

  .method public hidebysig static string 
          Replicate(class NHibernate.Linq.IDbMethods methods,
                    string 'value',
                    int32 count) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldnull
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::Replicate

  .method public hidebysig static string 
          Reverse(class NHibernate.Linq.IDbMethods methods,
                  string 'value') cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldnull
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::Reverse

  .method public hidebysig static string 
          Right(class NHibernate.Linq.IDbMethods methods,
                string 'value',
                int32 length) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldnull
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::Right

  .method public hidebysig static string 
          RTrim(class NHibernate.Linq.IDbMethods methods,
                string 'value') cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldnull
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::RTrim

  .method public hidebysig static string 
          Substring(class NHibernate.Linq.IDbMethods methods,
                    string 'value',
                    int32 start,
                    int32 length) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldnull
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::Substring

  .method public hidebysig static string 
          Upper(class NHibernate.Linq.IDbMethods methods,
                string 'value') cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldnull
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method SqlClientExtensions::Upper

} // end of class NHibernate.Linq.SqlClient.SqlClientExtensions

.class public auto ansi beforefieldinit NHibernate.Linq.Transform.LinqGroupingResultTransformer
       extends [mscorlib]System.Object
       implements [NHibernate]NHibernate.Transform.IResultTransformer
{
  .field private initonly class [mscorlib]System.Type groupingType
  .field private initonly class [mscorlib]System.Collections.Generic.IDictionary`2<object,class NHibernate.Linq.Transform.IGrouping> groups
  .field private initonly string propertyName
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [mscorlib]System.Type 'type',
                               string propertyName) cil managed
  {
    // Code size       113 (0x71)
    .maxstack  6
    .locals init (class [mscorlib]System.Type[] V_0,
             int32 V_1,
             class [mscorlib]System.Type[] V_2,
             bool V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.1
    IL_0009:  callvirt   instance class [mscorlib]System.Type[] [mscorlib]System.Type::GetGenericArguments()
    IL_000e:  stloc.0
    IL_000f:  ldarg.0
    IL_0010:  ldtoken    NHibernate.Linq.Transform.Grouping`2
    IL_0015:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_001a:  ldc.i4.2
    IL_001b:  newarr     [mscorlib]System.Type
    IL_0020:  stloc.2
    IL_0021:  ldloc.2
    IL_0022:  ldc.i4.0
    IL_0023:  ldloc.0
    IL_0024:  ldc.i4.0
    IL_0025:  ldelem.ref
    IL_0026:  stelem.ref
    IL_0027:  ldloc.2
    IL_0028:  ldc.i4.1
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.1
    IL_002b:  ldelem.ref
    IL_002c:  stelem.ref
    IL_002d:  ldloc.2
    IL_002e:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Type::MakeGenericType(class [mscorlib]System.Type[])
    IL_0033:  stfld      class [mscorlib]System.Type NHibernate.Linq.Transform.LinqGroupingResultTransformer::groupingType
    IL_0038:  ldarg.0
    IL_0039:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<object,class NHibernate.Linq.Transform.IGrouping>::.ctor()
    IL_003e:  stfld      class [mscorlib]System.Collections.Generic.IDictionary`2<object,class NHibernate.Linq.Transform.IGrouping> NHibernate.Linq.Transform.LinqGroupingResultTransformer::groups
    IL_0043:  ldarg.0
    IL_0044:  ldarg.2
    IL_0045:  stfld      string NHibernate.Linq.Transform.LinqGroupingResultTransformer::propertyName
    IL_004a:  ldarg.2
    IL_004b:  ldc.i4.s   46
    IL_004d:  callvirt   instance int32 [mscorlib]System.String::IndexOf(char)
    IL_0052:  stloc.1
    IL_0053:  ldloc.1
    IL_0054:  ldc.i4.m1
    IL_0055:  cgt
    IL_0057:  ldc.i4.0
    IL_0058:  ceq
    IL_005a:  stloc.3
    IL_005b:  ldloc.3
    IL_005c:  brtrue.s   IL_006f

    IL_005e:  nop
    IL_005f:  ldarg.0
    IL_0060:  ldarg.2
    IL_0061:  ldloc.1
    IL_0062:  ldc.i4.1
    IL_0063:  add
    IL_0064:  callvirt   instance string [mscorlib]System.String::Substring(int32)
    IL_0069:  stfld      string NHibernate.Linq.Transform.LinqGroupingResultTransformer::propertyName
    IL_006e:  nop
    IL_006f:  nop
    IL_0070:  ret
  } // end of method LinqGroupingResultTransformer::.ctor

  .method public hidebysig newslot virtual final 
          instance class [mscorlib]System.Collections.IList 
          TransformList(class [mscorlib]System.Collections.IList collection) cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  2
    .locals init (class [mscorlib]System.Collections.IList V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  br.s       IL_000d

    IL_0003:  nop
    IL_0004:  ldarg.1
    IL_0005:  ldnull
    IL_0006:  callvirt   instance void [mscorlib]System.Collections.IList::Remove(object)
    IL_000b:  nop
    IL_000c:  nop
    IL_000d:  ldarg.1
    IL_000e:  ldnull
    IL_000f:  callvirt   instance bool [mscorlib]System.Collections.IList::Contains(object)
    IL_0014:  stloc.1
    IL_0015:  ldloc.1
    IL_0016:  brtrue.s   IL_0003

    IL_0018:  ldarg.1
    IL_0019:  stloc.0
    IL_001a:  br.s       IL_001c

    IL_001c:  ldloc.0
    IL_001d:  ret
  } // end of method LinqGroupingResultTransformer::TransformList

  .method public hidebysig newslot virtual final 
          instance object  TransformTuple(object[] tuple,
                                          string[] aliases) cil managed
  {
    // Code size       152 (0x98)
    .maxstack  4
    .locals init (object V_0,
             string V_1,
             class NHibernate.Linq.Transform.IGrouping V_2,
             object V_3,
             bool V_4,
             object[] V_5)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.0
    IL_0003:  ldelem.ref
    IL_0004:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_0009:  ldarg.0
    IL_000a:  ldfld      string NHibernate.Linq.Transform.LinqGroupingResultTransformer::propertyName
    IL_000f:  callvirt   instance class [mscorlib]System.Reflection.PropertyInfo [mscorlib]System.Type::GetProperty(string)
    IL_0014:  ldarg.1
    IL_0015:  ldc.i4.0
    IL_0016:  ldelem.ref
    IL_0017:  ldnull
    IL_0018:  callvirt   instance object [mscorlib]System.Reflection.PropertyInfo::GetValue(object,
                                                                                            object[])
    IL_001d:  stloc.0
    IL_001e:  ldstr      "{0}"
    IL_0023:  ldloc.0
    IL_0024:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0029:  stloc.1
    IL_002a:  ldarg.0
    IL_002b:  ldfld      class [mscorlib]System.Collections.Generic.IDictionary`2<object,class NHibernate.Linq.Transform.IGrouping> NHibernate.Linq.Transform.LinqGroupingResultTransformer::groups
    IL_0030:  ldloc.1
    IL_0031:  callvirt   instance bool class [mscorlib]System.Collections.Generic.IDictionary`2<object,class NHibernate.Linq.Transform.IGrouping>::ContainsKey(!0)
    IL_0036:  ldc.i4.0
    IL_0037:  ceq
    IL_0039:  stloc.s    V_4
    IL_003b:  ldloc.s    V_4
    IL_003d:  brtrue.s   IL_0059

    IL_003f:  nop
    IL_0040:  ldarg.0
    IL_0041:  ldfld      class [mscorlib]System.Collections.Generic.IDictionary`2<object,class NHibernate.Linq.Transform.IGrouping> NHibernate.Linq.Transform.LinqGroupingResultTransformer::groups
    IL_0046:  ldloc.1
    IL_0047:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.IDictionary`2<object,class NHibernate.Linq.Transform.IGrouping>::get_Item(!0)
    IL_004c:  ldarg.1
    IL_004d:  ldc.i4.1
    IL_004e:  ldelem.ref
    IL_004f:  callvirt   instance void NHibernate.Linq.Transform.IGrouping::Add(object)
    IL_0054:  nop
    IL_0055:  ldnull
    IL_0056:  stloc.3
    IL_0057:  br.s       IL_0096

    IL_0059:  nop
    IL_005a:  ldarg.0
    IL_005b:  ldfld      class [mscorlib]System.Type NHibernate.Linq.Transform.LinqGroupingResultTransformer::groupingType
    IL_0060:  ldc.i4.1
    IL_0061:  newarr     [mscorlib]System.Object
    IL_0066:  stloc.s    V_5
    IL_0068:  ldloc.s    V_5
    IL_006a:  ldc.i4.0
    IL_006b:  ldloc.0
    IL_006c:  stelem.ref
    IL_006d:  ldloc.s    V_5
    IL_006f:  call       object [mscorlib]System.Activator::CreateInstance(class [mscorlib]System.Type,
                                                                           object[])
    IL_0074:  castclass  NHibernate.Linq.Transform.IGrouping
    IL_0079:  stloc.2
    IL_007a:  ldloc.2
    IL_007b:  ldarg.1
    IL_007c:  ldc.i4.1
    IL_007d:  ldelem.ref
    IL_007e:  callvirt   instance void NHibernate.Linq.Transform.IGrouping::Add(object)
    IL_0083:  nop
    IL_0084:  ldarg.0
    IL_0085:  ldfld      class [mscorlib]System.Collections.Generic.IDictionary`2<object,class NHibernate.Linq.Transform.IGrouping> NHibernate.Linq.Transform.LinqGroupingResultTransformer::groups
    IL_008a:  ldloc.1
    IL_008b:  ldloc.2
    IL_008c:  callvirt   instance void class [mscorlib]System.Collections.Generic.IDictionary`2<object,class NHibernate.Linq.Transform.IGrouping>::set_Item(!0,
                                                                                                                                                            !1)
    IL_0091:  nop
    IL_0092:  ldloc.2
    IL_0093:  stloc.3
    IL_0094:  br.s       IL_0096

    IL_0096:  ldloc.3
    IL_0097:  ret
  } // end of method LinqGroupingResultTransformer::TransformTuple

} // end of class NHibernate.Linq.Transform.LinqGroupingResultTransformer

.class interface private abstract auto ansi NHibernate.Linq.Transform.IGrouping
{
  .method public hidebysig newslot abstract virtual 
          instance void  Add(object item) cil managed
  {
  } // end of method IGrouping::Add

} // end of class NHibernate.Linq.Transform.IGrouping

.class private auto ansi beforefieldinit NHibernate.Linq.Transform.Grouping`2<TKey,TElement>
       extends [mscorlib]System.Object
       implements class [System.Core]System.Linq.IGrouping`2<!TKey,!TElement>,
                  class [mscorlib]System.Collections.Generic.IEnumerable`1<!TElement>,
                  [mscorlib]System.Collections.IEnumerable,
                  NHibernate.Linq.Transform.IGrouping
{
  .field private initonly !TKey key
  .field private initonly class [mscorlib]System.Collections.Generic.IList`1<!TElement> list
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(!TKey key) cil managed
  {
    // Code size       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<!TElement>::.ctor()
    IL_0006:  stfld      class [mscorlib]System.Collections.Generic.IList`1<!1> class NHibernate.Linq.Transform.Grouping`2<!TKey,!TElement>::list
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0011:  nop
    IL_0012:  nop
    IL_0013:  ldarg.0
    IL_0014:  ldarg.1
    IL_0015:  stfld      !0 class NHibernate.Linq.Transform.Grouping`2<!TKey,!TElement>::key
    IL_001a:  nop
    IL_001b:  ret
  } // end of method Grouping`2::.ctor

  .method public hidebysig newslot virtual final 
          instance void  Add(object item) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [mscorlib]System.Collections.Generic.IList`1<!1> class NHibernate.Linq.Transform.Grouping`2<!TKey,!TElement>::list
    IL_0007:  ldarg.1
    IL_0008:  unbox.any  !TElement
    IL_000d:  callvirt   instance void class [mscorlib]System.Collections.Generic.ICollection`1<!TElement>::Add(!0)
    IL_0012:  nop
    IL_0013:  ret
  } // end of method Grouping`2::Add

  .method public hidebysig newslot specialname virtual final 
          instance !TKey  get_Key() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (!TKey V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      !0 class NHibernate.Linq.Transform.Grouping`2<!TKey,!TElement>::key
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method Grouping`2::get_Key

  .method public hidebysig newslot virtual final 
          instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!TElement> 
          GetEnumerator() cil managed
  {
    // Code size       17 (0x11)
    .maxstack  1
    .locals init (class [mscorlib]System.Collections.Generic.IEnumerator`1<!TElement> V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [mscorlib]System.Collections.Generic.IList`1<!1> class NHibernate.Linq.Transform.Grouping`2<!TKey,!TElement>::list
    IL_0007:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.Generic.IEnumerable`1<!TElement>::GetEnumerator()
    IL_000c:  stloc.0
    IL_000d:  br.s       IL_000f

    IL_000f:  ldloc.0
    IL_0010:  ret
  } // end of method Grouping`2::GetEnumerator

  .method private hidebysig newslot virtual final 
          instance class [mscorlib]System.Collections.IEnumerator 
          System.Collections.IEnumerable.GetEnumerator() cil managed
  {
    .override [mscorlib]System.Collections.IEnumerable::GetEnumerator
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (class [mscorlib]System.Collections.IEnumerator V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!1> class NHibernate.Linq.Transform.Grouping`2<!TKey,!TElement>::GetEnumerator()
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method Grouping`2::System.Collections.IEnumerable.GetEnumerator

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       27 (0x1b)
    .maxstack  2
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldstr      "Key = {0}"
    IL_0006:  ldarg.0
    IL_0007:  call       instance !0 class NHibernate.Linq.Transform.Grouping`2<!TKey,!TElement>::get_Key()
    IL_000c:  box        !TKey
    IL_0011:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0016:  stloc.0
    IL_0017:  br.s       IL_0019

    IL_0019:  ldloc.0
    IL_001a:  ret
  } // end of method Grouping`2::ToString

  .property instance !TKey Key()
  {
    .get instance !TKey NHibernate.Linq.Transform.Grouping`2::get_Key()
  } // end of property Grouping`2::Key
} // end of class NHibernate.Linq.Transform.Grouping`2

.class public auto ansi beforefieldinit NHibernate.Linq.Transform.LinqJoinResultsTransformer
       extends [mscorlib]System.Object
       implements [NHibernate]NHibernate.Transform.IResultTransformer
{
  .field private initonly class [mscorlib]System.Type _entityType
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [mscorlib]System.Type entityType) cil managed
  {
    // Code size       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [mscorlib]System.Type NHibernate.Linq.Transform.LinqJoinResultsTransformer::_entityType
    IL_000f:  nop
    IL_0010:  ret
  } // end of method LinqJoinResultsTransformer::.ctor

  .method public hidebysig newslot virtual final 
          instance class [mscorlib]System.Collections.IList 
          TransformList(class [mscorlib]System.Collections.IList collection) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (class [mscorlib]System.Collections.IList V_0)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method LinqJoinResultsTransformer::TransformList

  .method public hidebysig newslot virtual final 
          instance object  TransformTuple(object[] tuple,
                                          string[] aliases) cil managed
  {
    // Code size       71 (0x47)
    .maxstack  2
    .locals init (object V_0,
             object V_1,
             object[] V_2,
             int32 V_3,
             bool V_4)
    IL_0000:  nop
    IL_0001:  nop
    IL_0002:  ldarg.1
    IL_0003:  stloc.2
    IL_0004:  ldc.i4.0
    IL_0005:  stloc.3
    IL_0006:  br.s       IL_0034

    IL_0008:  ldloc.2
    IL_0009:  ldloc.3
    IL_000a:  ldelem.ref
    IL_000b:  stloc.0
    IL_000c:  nop
    IL_000d:  ldloc.0
    IL_000e:  brfalse.s  IL_0023

    IL_0010:  ldloc.0
    IL_0011:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [mscorlib]System.Type NHibernate.Linq.Transform.LinqJoinResultsTransformer::_entityType
    IL_001c:  ceq
    IL_001e:  ldc.i4.0
    IL_001f:  ceq
    IL_0021:  br.s       IL_0024

    IL_0023:  ldc.i4.1
    IL_0024:  stloc.s    V_4
    IL_0026:  ldloc.s    V_4
    IL_0028:  brtrue.s   IL_002f

    IL_002a:  nop
    IL_002b:  ldloc.0
    IL_002c:  stloc.1
    IL_002d:  leave.s    IL_0044

    IL_002f:  nop
    IL_0030:  ldloc.3
    IL_0031:  ldc.i4.1
    IL_0032:  add
    IL_0033:  stloc.3
    IL_0034:  ldloc.3
    IL_0035:  ldloc.2
    IL_0036:  ldlen
    IL_0037:  conv.i4
    IL_0038:  clt
    IL_003a:  stloc.s    V_4
    IL_003c:  ldloc.s    V_4
    IL_003e:  brtrue.s   IL_0008

    IL_0040:  ldnull
    IL_0041:  stloc.1
    IL_0042:  br.s       IL_0044

    IL_0044:  nop
    IL_0045:  ldloc.1
    IL_0046:  ret
  } // end of method LinqJoinResultsTransformer::TransformTuple

} // end of class NHibernate.Linq.Transform.LinqJoinResultsTransformer

.class public auto ansi serializable beforefieldinit NHibernate.Transform.TypeSafeConstructorMemberInitResultTransformer
       extends [mscorlib]System.Object
       implements [NHibernate]NHibernate.Transform.IResultTransformer
{
  .field private initonly class [System.Core]System.Linq.Expressions.Expression expression
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [System.Core]System.Linq.Expressions.NewExpression expression) cil managed
  {
    // Code size       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [System.Core]System.Linq.Expressions.Expression NHibernate.Transform.TypeSafeConstructorMemberInitResultTransformer::expression
    IL_000f:  nop
    IL_0010:  ret
  } // end of method TypeSafeConstructorMemberInitResultTransformer::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [System.Core]System.Linq.Expressions.MemberInitExpression expression) cil managed
  {
    // Code size       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [System.Core]System.Linq.Expressions.Expression NHibernate.Transform.TypeSafeConstructorMemberInitResultTransformer::expression
    IL_000f:  nop
    IL_0010:  ret
  } // end of method TypeSafeConstructorMemberInitResultTransformer::.ctor

  .method public hidebysig newslot virtual final 
          instance object  TransformTuple(object[] tuple,
                                          string[] aliases) cil managed
  {
    // Code size       116 (0x74)
    .maxstack  4
    .locals init (int32 V_0,
             class [mscorlib]System.Exception V_1,
             object V_2,
             valuetype [System.Core]System.Linq.Expressions.ExpressionType V_3)
    IL_0000:  nop
    .try
    {
      IL_0001:  nop
      IL_0002:  ldarg.0
      IL_0003:  ldfld      class [System.Core]System.Linq.Expressions.Expression NHibernate.Transform.TypeSafeConstructorMemberInitResultTransformer::expression
      IL_0008:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.ExpressionType [System.Core]System.Linq.Expressions.Expression::get_NodeType()
      IL_000d:  stloc.3
      IL_000e:  ldloc.3
      IL_000f:  ldc.i4.s   24
      IL_0011:  beq.s      IL_0031

      IL_0013:  ldloc.3
      IL_0014:  ldc.i4.s   31
      IL_0016:  beq.s      IL_001a

      IL_0018:  br.s       IL_0048

      IL_001a:  ldarg.0
      IL_001b:  ldarg.0
      IL_001c:  ldfld      class [System.Core]System.Linq.Expressions.Expression NHibernate.Transform.TypeSafeConstructorMemberInitResultTransformer::expression
      IL_0021:  castclass  [System.Core]System.Linq.Expressions.NewExpression
      IL_0026:  ldarg.1
      IL_0027:  ldloca.s   V_0
      IL_0029:  call       instance object NHibernate.Transform.TypeSafeConstructorMemberInitResultTransformer::InvokeConstructor(class [System.Core]System.Linq.Expressions.NewExpression,
                                                                                                                                  object[],
                                                                                                                                  int32&)
      IL_002e:  stloc.2
      IL_002f:  leave.s    IL_0071

      IL_0031:  ldarg.0
      IL_0032:  ldarg.0
      IL_0033:  ldfld      class [System.Core]System.Linq.Expressions.Expression NHibernate.Transform.TypeSafeConstructorMemberInitResultTransformer::expression
      IL_0038:  castclass  [System.Core]System.Linq.Expressions.MemberInitExpression
      IL_003d:  ldarg.1
      IL_003e:  ldloca.s   V_0
      IL_0040:  call       instance object NHibernate.Transform.TypeSafeConstructorMemberInitResultTransformer::InvokeMemberInitExpression(class [System.Core]System.Linq.Expressions.MemberInitExpression,
                                                                                                                                           object[],
                                                                                                                                           int32&)
      IL_0045:  stloc.2
      IL_0046:  leave.s    IL_0071

      IL_0048:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor()
      IL_004d:  throw

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_004e:  stloc.1
      IL_004f:  nop
      IL_0050:  ldstr      "could not instantiate: "
      IL_0055:  ldarg.0
      IL_0056:  ldfld      class [System.Core]System.Linq.Expressions.Expression NHibernate.Transform.TypeSafeConstructorMemberInitResultTransformer::expression
      IL_005b:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
      IL_0060:  callvirt   instance string [mscorlib]System.Type::get_FullName()
      IL_0065:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_006a:  ldloc.1
      IL_006b:  newobj     instance void [NHibernate]NHibernate.QueryException::.ctor(string,
                                                                                      class [mscorlib]System.Exception)
      IL_0070:  throw

    }  // end handler
    IL_0071:  nop
    IL_0072:  ldloc.2
    IL_0073:  ret
  } // end of method TypeSafeConstructorMemberInitResultTransformer::TransformTuple

  .method private hidebysig instance object 
          InvokeConstructor(class [System.Core]System.Linq.Expressions.NewExpression expression,
                            object[] args,
                            [out] int32& argumentCount) cil managed
  {
    // Code size       229 (0xe5)
    .maxstack  4
    .locals init (object V_0,
             int32 V_1,
             class [mscorlib]System.Collections.ArrayList V_2,
             int32 V_3,
             class [System.Core]System.Linq.Expressions.Expression V_4,
             object V_5,
             class [mscorlib]System.Collections.Generic.IEnumerator`1<class [System.Core]System.Linq.Expressions.Expression> V_6,
             valuetype [System.Core]System.Linq.Expressions.ExpressionType V_7,
             bool V_8)
    IL_0000:  nop
    IL_0001:  ldarg.3
    IL_0002:  ldc.i4.0
    IL_0003:  stind.i4
    IL_0004:  newobj     instance void [mscorlib]System.Collections.ArrayList::.ctor()
    IL_0009:  stloc.2
    IL_000a:  ldc.i4.0
    IL_000b:  stloc.3
    IL_000c:  nop
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.NewExpression::get_Arguments()
    IL_0013:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::GetEnumerator()
    IL_0018:  stloc.s    V_6
    .try
    {
      IL_001a:  br         IL_00a3

      IL_001f:  ldloc.s    V_6
      IL_0021:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class [System.Core]System.Linq.Expressions.Expression>::get_Current()
      IL_0026:  stloc.s    V_4
      IL_0028:  nop
      IL_0029:  ldloc.s    V_4
      IL_002b:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.ExpressionType [System.Core]System.Linq.Expressions.Expression::get_NodeType()
      IL_0030:  stloc.s    V_7
      IL_0032:  ldloc.s    V_7
      IL_0034:  ldc.i4.s   24
      IL_0036:  beq.s      IL_0062

      IL_0038:  ldloc.s    V_7
      IL_003a:  ldc.i4.s   31
      IL_003c:  beq.s      IL_0040

      IL_003e:  br.s       IL_0084

      IL_0040:  ldarg.0
      IL_0041:  ldloc.s    V_4
      IL_0043:  castclass  [System.Core]System.Linq.Expressions.NewExpression
      IL_0048:  ldarg.2
      IL_0049:  ldloc.3
      IL_004a:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> [System.Core]System.Linq.Enumerable::Skip<object>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                           int32)
      IL_004f:  call       !!0[] [System.Core]System.Linq.Enumerable::ToArray<object>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
      IL_0054:  ldloca.s   V_1
      IL_0056:  call       instance object NHibernate.Transform.TypeSafeConstructorMemberInitResultTransformer::InvokeConstructor(class [System.Core]System.Linq.Expressions.NewExpression,
                                                                                                                                  object[],
                                                                                                                                  int32&)
      IL_005b:  stloc.0
      IL_005c:  ldloc.3
      IL_005d:  ldloc.1
      IL_005e:  add
      IL_005f:  stloc.3
      IL_0060:  br.s       IL_009a

      IL_0062:  ldarg.0
      IL_0063:  ldloc.s    V_4
      IL_0065:  castclass  [System.Core]System.Linq.Expressions.MemberInitExpression
      IL_006a:  ldarg.2
      IL_006b:  ldloc.3
      IL_006c:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> [System.Core]System.Linq.Enumerable::Skip<object>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                           int32)
      IL_0071:  call       !!0[] [System.Core]System.Linq.Enumerable::ToArray<object>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
      IL_0076:  ldloca.s   V_1
      IL_0078:  call       instance object NHibernate.Transform.TypeSafeConstructorMemberInitResultTransformer::InvokeMemberInitExpression(class [System.Core]System.Linq.Expressions.MemberInitExpression,
                                                                                                                                           object[],
                                                                                                                                           int32&)
      IL_007d:  stloc.0
      IL_007e:  ldloc.3
      IL_007f:  ldloc.1
      IL_0080:  add
      IL_0081:  stloc.3
      IL_0082:  br.s       IL_009a

      IL_0084:  ldarg.2
      IL_0085:  ldloc.3
      IL_0086:  ldelem.ref
      IL_0087:  ldloc.s    V_4
      IL_0089:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
      IL_008e:  call       object NHibernate.Linq.Util.LinqUtil::ChangeType(object,
                                                                            class [mscorlib]System.Type)
      IL_0093:  stloc.0
      IL_0094:  ldloc.3
      IL_0095:  ldc.i4.1
      IL_0096:  add
      IL_0097:  stloc.3
      IL_0098:  br.s       IL_009a

      IL_009a:  ldloc.2
      IL_009b:  ldloc.0
      IL_009c:  callvirt   instance int32 [mscorlib]System.Collections.ArrayList::Add(object)
      IL_00a1:  pop
      IL_00a2:  nop
      IL_00a3:  ldloc.s    V_6
      IL_00a5:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_00aa:  stloc.s    V_8
      IL_00ac:  ldloc.s    V_8
      IL_00ae:  brtrue     IL_001f

      IL_00b3:  leave.s    IL_00c9

    }  // end .try
    finally
    {
      IL_00b5:  ldloc.s    V_6
      IL_00b7:  ldnull
      IL_00b8:  ceq
      IL_00ba:  stloc.s    V_8
      IL_00bc:  ldloc.s    V_8
      IL_00be:  brtrue.s   IL_00c8

      IL_00c0:  ldloc.s    V_6
      IL_00c2:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_00c7:  nop
      IL_00c8:  endfinally
    }  // end handler
    IL_00c9:  nop
    IL_00ca:  ldarg.3
    IL_00cb:  ldloc.3
    IL_00cc:  stind.i4
    IL_00cd:  ldarg.1
    IL_00ce:  callvirt   instance class [mscorlib]System.Reflection.ConstructorInfo [System.Core]System.Linq.Expressions.NewExpression::get_Constructor()
    IL_00d3:  ldloc.2
    IL_00d4:  callvirt   instance object[] [mscorlib]System.Collections.ArrayList::ToArray()
    IL_00d9:  callvirt   instance object [mscorlib]System.Reflection.ConstructorInfo::Invoke(object[])
    IL_00de:  stloc.s    V_5
    IL_00e0:  br.s       IL_00e2

    IL_00e2:  ldloc.s    V_5
    IL_00e4:  ret
  } // end of method TypeSafeConstructorMemberInitResultTransformer::InvokeConstructor

  .method private hidebysig instance object 
          InvokeMemberInitExpression(class [System.Core]System.Linq.Expressions.MemberInitExpression expression,
                                     object[] args,
                                     [out] int32& argumentCount) cil managed
  {
    // Code size       250 (0xfa)
    .maxstack  4
    .locals init (object V_0,
             int32 V_1,
             int32 V_2,
             object V_3,
             int32 V_4,
             class [System.Core]System.Linq.Expressions.MemberAssignment V_5,
             object V_6,
             class [mscorlib]System.Collections.Generic.IEnumerator`1<class [System.Core]System.Linq.Expressions.MemberBinding> V_7,
             valuetype [System.Core]System.Linq.Expressions.ExpressionType V_8,
             bool V_9)
    IL_0000:  nop
    IL_0001:  ldarg.3
    IL_0002:  ldc.i4.0
    IL_0003:  stind.i4
    IL_0004:  ldarg.0
    IL_0005:  ldarg.1
    IL_0006:  callvirt   instance class [System.Core]System.Linq.Expressions.NewExpression [System.Core]System.Linq.Expressions.MemberInitExpression::get_NewExpression()
    IL_000b:  ldarg.2
    IL_000c:  ldloca.s   V_2
    IL_000e:  call       instance object NHibernate.Transform.TypeSafeConstructorMemberInitResultTransformer::InvokeConstructor(class [System.Core]System.Linq.Expressions.NewExpression,
                                                                                                                                object[],
                                                                                                                                int32&)
    IL_0013:  stloc.3
    IL_0014:  ldloc.2
    IL_0015:  stloc.s    V_4
    IL_0017:  nop
    IL_0018:  ldarg.1
    IL_0019:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.MemberBinding> [System.Core]System.Linq.Expressions.MemberInitExpression::get_Bindings()
    IL_001e:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.MemberBinding>::GetEnumerator()
    IL_0023:  stloc.s    V_7
    .try
    {
      IL_0025:  br         IL_00c7

      IL_002a:  ldloc.s    V_7
      IL_002c:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class [System.Core]System.Linq.Expressions.MemberBinding>::get_Current()
      IL_0031:  castclass  [System.Core]System.Linq.Expressions.MemberAssignment
      IL_0036:  stloc.s    V_5
      IL_0038:  nop
      IL_0039:  ldloc.s    V_5
      IL_003b:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.MemberAssignment::get_Expression()
      IL_0040:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.ExpressionType [System.Core]System.Linq.Expressions.Expression::get_NodeType()
      IL_0045:  stloc.s    V_8
      IL_0047:  ldloc.s    V_8
      IL_0049:  ldc.i4.s   24
      IL_004b:  beq.s      IL_007f

      IL_004d:  ldloc.s    V_8
      IL_004f:  ldc.i4.s   31
      IL_0051:  beq.s      IL_0055

      IL_0053:  br.s       IL_00a9

      IL_0055:  ldarg.0
      IL_0056:  ldloc.s    V_5
      IL_0058:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.MemberAssignment::get_Expression()
      IL_005d:  castclass  [System.Core]System.Linq.Expressions.NewExpression
      IL_0062:  ldarg.2
      IL_0063:  ldloc.s    V_4
      IL_0065:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> [System.Core]System.Linq.Enumerable::Skip<object>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                           int32)
      IL_006a:  call       !!0[] [System.Core]System.Linq.Enumerable::ToArray<object>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
      IL_006f:  ldloca.s   V_1
      IL_0071:  call       instance object NHibernate.Transform.TypeSafeConstructorMemberInitResultTransformer::InvokeConstructor(class [System.Core]System.Linq.Expressions.NewExpression,
                                                                                                                                  object[],
                                                                                                                                  int32&)
      IL_0076:  stloc.0
      IL_0077:  ldloc.s    V_4
      IL_0079:  ldloc.1
      IL_007a:  add
      IL_007b:  stloc.s    V_4
      IL_007d:  br.s       IL_00b6

      IL_007f:  ldarg.0
      IL_0080:  ldloc.s    V_5
      IL_0082:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.MemberAssignment::get_Expression()
      IL_0087:  castclass  [System.Core]System.Linq.Expressions.MemberInitExpression
      IL_008c:  ldarg.2
      IL_008d:  ldloc.s    V_4
      IL_008f:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> [System.Core]System.Linq.Enumerable::Skip<object>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                           int32)
      IL_0094:  call       !!0[] [System.Core]System.Linq.Enumerable::ToArray<object>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
      IL_0099:  ldloca.s   V_1
      IL_009b:  call       instance object NHibernate.Transform.TypeSafeConstructorMemberInitResultTransformer::InvokeMemberInitExpression(class [System.Core]System.Linq.Expressions.MemberInitExpression,
                                                                                                                                           object[],
                                                                                                                                           int32&)
      IL_00a0:  stloc.0
      IL_00a1:  ldloc.s    V_4
      IL_00a3:  ldloc.1
      IL_00a4:  add
      IL_00a5:  stloc.s    V_4
      IL_00a7:  br.s       IL_00b6

      IL_00a9:  ldarg.2
      IL_00aa:  ldloc.s    V_4
      IL_00ac:  ldelem.ref
      IL_00ad:  stloc.0
      IL_00ae:  ldloc.s    V_4
      IL_00b0:  ldc.i4.1
      IL_00b1:  add
      IL_00b2:  stloc.s    V_4
      IL_00b4:  br.s       IL_00b6

      IL_00b6:  ldarg.0
      IL_00b7:  ldloc.s    V_5
      IL_00b9:  callvirt   instance class [mscorlib]System.Reflection.MemberInfo [System.Core]System.Linq.Expressions.MemberBinding::get_Member()
      IL_00be:  ldloc.3
      IL_00bf:  ldloc.0
      IL_00c0:  call       instance void NHibernate.Transform.TypeSafeConstructorMemberInitResultTransformer::SetValue(class [mscorlib]System.Reflection.MemberInfo,
                                                                                                                       object,
                                                                                                                       object)
      IL_00c5:  nop
      IL_00c6:  nop
      IL_00c7:  ldloc.s    V_7
      IL_00c9:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_00ce:  stloc.s    V_9
      IL_00d0:  ldloc.s    V_9
      IL_00d2:  brtrue     IL_002a

      IL_00d7:  leave.s    IL_00ed

    }  // end .try
    finally
    {
      IL_00d9:  ldloc.s    V_7
      IL_00db:  ldnull
      IL_00dc:  ceq
      IL_00de:  stloc.s    V_9
      IL_00e0:  ldloc.s    V_9
      IL_00e2:  brtrue.s   IL_00ec

      IL_00e4:  ldloc.s    V_7
      IL_00e6:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_00eb:  nop
      IL_00ec:  endfinally
    }  // end handler
    IL_00ed:  nop
    IL_00ee:  ldarg.3
    IL_00ef:  ldloc.s    V_4
    IL_00f1:  stind.i4
    IL_00f2:  ldloc.3
    IL_00f3:  stloc.s    V_6
    IL_00f5:  br.s       IL_00f7

    IL_00f7:  ldloc.s    V_6
    IL_00f9:  ret
  } // end of method TypeSafeConstructorMemberInitResultTransformer::InvokeMemberInitExpression

  .method private hidebysig instance void 
          SetValue(class [mscorlib]System.Reflection.MemberInfo memberInfo,
                   object 'instance',
                   object valueToSet) cil managed
  {
    // Code size       71 (0x47)
    .maxstack  4
    .locals init (class [mscorlib]System.Reflection.FieldInfo V_0,
             class [mscorlib]System.Reflection.PropertyInfo V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  isinst     [mscorlib]System.Reflection.FieldInfo
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldnull
    IL_000a:  ceq
    IL_000c:  stloc.2
    IL_000d:  ldloc.2
    IL_000e:  brtrue.s   IL_0028

    IL_0010:  nop
    IL_0011:  ldloc.0
    IL_0012:  ldarg.2
    IL_0013:  ldarg.3
    IL_0014:  ldloc.0
    IL_0015:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Reflection.FieldInfo::get_FieldType()
    IL_001a:  call       object NHibernate.Linq.Util.LinqUtil::ChangeType(object,
                                                                          class [mscorlib]System.Type)
    IL_001f:  callvirt   instance void [mscorlib]System.Reflection.FieldInfo::SetValue(object,
                                                                                       object)
    IL_0024:  nop
    IL_0025:  nop
    IL_0026:  br.s       IL_0046

    IL_0028:  nop
    IL_0029:  ldarg.1
    IL_002a:  isinst     [mscorlib]System.Reflection.PropertyInfo
    IL_002f:  stloc.1
    IL_0030:  ldloc.1
    IL_0031:  ldarg.2
    IL_0032:  ldarg.3
    IL_0033:  ldloc.1
    IL_0034:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Reflection.PropertyInfo::get_PropertyType()
    IL_0039:  call       object NHibernate.Linq.Util.LinqUtil::ChangeType(object,
                                                                          class [mscorlib]System.Type)
    IL_003e:  ldnull
    IL_003f:  callvirt   instance void [mscorlib]System.Reflection.PropertyInfo::SetValue(object,
                                                                                          object,
                                                                                          object[])
    IL_0044:  nop
    IL_0045:  nop
    IL_0046:  ret
  } // end of method TypeSafeConstructorMemberInitResultTransformer::SetValue

  .method public hidebysig newslot virtual final 
          instance class [mscorlib]System.Collections.IList 
          TransformList(class [mscorlib]System.Collections.IList collection) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (class [mscorlib]System.Collections.IList V_0)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method TypeSafeConstructorMemberInitResultTransformer::TransformList

} // end of class NHibernate.Transform.TypeSafeConstructorMemberInitResultTransformer

.class public abstract auto ansi sealed beforefieldinit NHibernate.Linq.Util.CriteriaUtil
       extends [mscorlib]System.Object
{
  .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig static class [NHibernate]NHibernate.Criterion.ICriteriaQuery 
          GenerateCriteriaQuery(class [NHibernate]NHibernate.ICriteria criteria,
                                class [NHibernate]NHibernate.ISessionFactory sessionFactory,
                                string rootEntityName) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       29 (0x1d)
    .maxstack  5
    .locals init (class [NHibernate]NHibernate.Criterion.ICriteriaQuery V_0)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  castclass  [NHibernate]NHibernate.Engine.ISessionFactoryImplementor
    IL_0007:  ldarg.0
    IL_0008:  castclass  [NHibernate]NHibernate.Impl.CriteriaImpl
    IL_000d:  ldarg.2
    IL_000e:  ldstr      "this"
    IL_0013:  newobj     instance void [NHibernate]NHibernate.Loader.Criteria.CriteriaQueryTranslator::.ctor(class [NHibernate]NHibernate.Engine.ISessionFactoryImplementor,
                                                                                                             class [NHibernate]NHibernate.Impl.CriteriaImpl,
                                                                                                             string,
                                                                                                             string)
    IL_0018:  stloc.0
    IL_0019:  br.s       IL_001b

    IL_001b:  ldloc.0
    IL_001c:  ret
  } // end of method CriteriaUtil::GenerateCriteriaQuery

  .method public hidebysig static void  SetProjectionIfNotNull(class [NHibernate]NHibernate.ICriteria criteria,
                                                               class [NHibernate]NHibernate.Criterion.IProjection projection) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       29 (0x1d)
    .maxstack  4
    .locals init (bool V_0,
             class [NHibernate]NHibernate.Criterion.IProjection[] V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  ldnull
    IL_0003:  ceq
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  brtrue.s   IL_001c

    IL_0009:  ldarg.0
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [NHibernate]NHibernate.Criterion.IProjection
    IL_0010:  stloc.1
    IL_0011:  ldloc.1
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.1
    IL_0016:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::SetProjection(class [NHibernate]NHibernate.Criterion.IProjection[])
    IL_001b:  pop
    IL_001c:  ret
  } // end of method CriteriaUtil::SetProjectionIfNotNull

  .method public hidebysig static void  SetResultTransformerIfNotNull(class [NHibernate]NHibernate.ICriteria criteria,
                                                                      class [NHibernate]NHibernate.Transform.IResultTransformer transformer) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       32 (0x20)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  ldnull
    IL_0003:  ceq
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  brtrue.s   IL_0013

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::SetResultTransformer(class [NHibernate]NHibernate.Transform.IResultTransformer)
    IL_0010:  pop
    IL_0011:  br.s       IL_001f

    IL_0013:  ldarg.0
    IL_0014:  newobj     instance void [NHibernate]NHibernate.Transform.RootEntityResultTransformer::.ctor()
    IL_0019:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::SetResultTransformer(class [NHibernate]NHibernate.Transform.IResultTransformer)
    IL_001e:  pop
    IL_001f:  ret
  } // end of method CriteriaUtil::SetResultTransformerIfNotNull

  .method public hidebysig static void  Add(class [NHibernate]NHibernate.ICriteria criteria,
                                            class [mscorlib]System.Collections.Generic.IEnumerable`1<class [NHibernate]NHibernate.Criterion.ICriterion> criterion) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       58 (0x3a)
    .maxstack  2
    .locals init (class [NHibernate]NHibernate.Criterion.ICriterion V_0,
             class [mscorlib]System.Collections.Generic.IEnumerator`1<class [NHibernate]NHibernate.Criterion.ICriterion> V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  nop
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.Generic.IEnumerable`1<class [NHibernate]NHibernate.Criterion.ICriterion>::GetEnumerator()
    IL_0008:  stloc.1
    .try
    {
      IL_0009:  br.s       IL_001c

      IL_000b:  ldloc.1
      IL_000c:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class [NHibernate]NHibernate.Criterion.ICriterion>::get_Current()
      IL_0011:  stloc.0
      IL_0012:  nop
      IL_0013:  ldarg.0
      IL_0014:  ldloc.0
      IL_0015:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::Add(class [NHibernate]NHibernate.Criterion.ICriterion)
      IL_001a:  pop
      IL_001b:  nop
      IL_001c:  ldloc.1
      IL_001d:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_0022:  stloc.2
      IL_0023:  ldloc.2
      IL_0024:  brtrue.s   IL_000b

      IL_0026:  leave.s    IL_0038

    }  // end .try
    finally
    {
      IL_0028:  ldloc.1
      IL_0029:  ldnull
      IL_002a:  ceq
      IL_002c:  stloc.2
      IL_002d:  ldloc.2
      IL_002e:  brtrue.s   IL_0037

      IL_0030:  ldloc.1
      IL_0031:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0036:  nop
      IL_0037:  endfinally
    }  // end handler
    IL_0038:  nop
    IL_0039:  ret
  } // end of method CriteriaUtil::Add

  .method public hidebysig static string 
          GetEntityOrClassName(class [NHibernate]NHibernate.ICriteria criteria) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       83 (0x53)
    .maxstack  2
    .locals init (class NHibernate.Linq.Util.DetachedCriteriaAdapter V_0,
             string V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  isinst     [NHibernate]NHibernate.Impl.CriteriaImpl
    IL_0007:  ldnull
    IL_0008:  cgt.un
    IL_000a:  ldc.i4.0
    IL_000b:  ceq
    IL_000d:  stloc.2
    IL_000e:  ldloc.2
    IL_000f:  brtrue.s   IL_0020

    IL_0011:  nop
    IL_0012:  ldarg.0
    IL_0013:  castclass  [NHibernate]NHibernate.Impl.CriteriaImpl
    IL_0018:  callvirt   instance string [NHibernate]NHibernate.Impl.CriteriaImpl::get_EntityOrClassName()
    IL_001d:  stloc.1
    IL_001e:  br.s       IL_0051

    IL_0020:  ldarg.0
    IL_0021:  isinst     NHibernate.Linq.Util.DetachedCriteriaAdapter
    IL_0026:  ldnull
    IL_0027:  cgt.un
    IL_0029:  ldc.i4.0
    IL_002a:  ceq
    IL_002c:  stloc.2
    IL_002d:  ldloc.2
    IL_002e:  brtrue.s   IL_0046

    IL_0030:  nop
    IL_0031:  ldarg.0
    IL_0032:  castclass  NHibernate.Linq.Util.DetachedCriteriaAdapter
    IL_0037:  stloc.0
    IL_0038:  ldloc.0
    IL_0039:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Util.DetachedCriteriaAdapter::get_DetachedCriteria()
    IL_003e:  callvirt   instance string [NHibernate]NHibernate.Criterion.DetachedCriteria::get_EntityOrClassName()
    IL_0043:  stloc.1
    IL_0044:  br.s       IL_0051

    IL_0046:  ldstr      "criteria must be of type CriteriaImpl or DetachedC"
    + "riteriaAdapter."
    IL_004b:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor(string)
    IL_0050:  throw

    IL_0051:  ldloc.1
    IL_0052:  ret
  } // end of method CriteriaUtil::GetEntityOrClassName

  .method public hidebysig static class [NHibernate]NHibernate.Criterion.IProjection 
          GetProjection(class [NHibernate]NHibernate.ICriteria criteria) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       32 (0x20)
    .maxstack  2
    .locals init (class [NHibernate]NHibernate.Impl.CriteriaImpl V_0,
             class [NHibernate]NHibernate.Criterion.IProjection V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  isinst     [NHibernate]NHibernate.Impl.CriteriaImpl
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldnull
    IL_000a:  ceq
    IL_000c:  stloc.2
    IL_000d:  ldloc.2
    IL_000e:  brtrue.s   IL_001a

    IL_0010:  nop
    IL_0011:  ldloc.0
    IL_0012:  callvirt   instance class [NHibernate]NHibernate.Criterion.IProjection [NHibernate]NHibernate.Impl.CriteriaImpl::get_Projection()
    IL_0017:  stloc.1
    IL_0018:  br.s       IL_001e

    IL_001a:  ldnull
    IL_001b:  stloc.1
    IL_001c:  br.s       IL_001e

    IL_001e:  ldloc.1
    IL_001f:  ret
  } // end of method CriteriaUtil::GetProjection

  .method public hidebysig static class [mscorlib]System.Type 
          GetRootType(class [NHibernate]NHibernate.ICriteria criteria) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       61 (0x3d)
    .maxstack  2
    .locals init (class NHibernate.Linq.Util.DetachedCriteriaAdapter V_0,
             class [mscorlib]System.Type V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  isinst     NHibernate.Linq.Util.DetachedCriteriaAdapter
    IL_0007:  ldnull
    IL_0008:  cgt.un
    IL_000a:  ldc.i4.0
    IL_000b:  ceq
    IL_000d:  stloc.2
    IL_000e:  ldloc.2
    IL_000f:  brtrue.s   IL_002d

    IL_0011:  nop
    IL_0012:  ldarg.0
    IL_0013:  castclass  NHibernate.Linq.Util.DetachedCriteriaAdapter
    IL_0018:  stloc.0
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Util.DetachedCriteriaAdapter::get_DetachedCriteria()
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [NHibernate]NHibernate.ISession NHibernate.Linq.Util.DetachedCriteriaAdapter::get_Session()
    IL_0025:  call       class [mscorlib]System.Type NHibernate.Linq.Util.CriteriaUtil::GetRootType(class [NHibernate]NHibernate.Criterion.DetachedCriteria,
                                                                                                    class [NHibernate]NHibernate.ISession)
    IL_002a:  stloc.1
    IL_002b:  br.s       IL_003b

    IL_002d:  ldarg.0
    IL_002e:  call       class [NHibernate]NHibernate.Impl.CriteriaImpl NHibernate.Linq.Util.CriteriaUtil::GetRootCriteria(class [NHibernate]NHibernate.ICriteria)
    IL_0033:  call       class [mscorlib]System.Type NHibernate.Linq.Util.CriteriaUtil::GetRootType(class [NHibernate]NHibernate.Impl.CriteriaImpl)
    IL_0038:  stloc.1
    IL_0039:  br.s       IL_003b

    IL_003b:  ldloc.1
    IL_003c:  ret
  } // end of method CriteriaUtil::GetRootType

  .method public hidebysig static class [NHibernate]NHibernate.Engine.ISessionImplementor 
          GetSession(class [NHibernate]NHibernate.ICriteria criteria) cil managed
  {
    // Code size       17 (0x11)
    .maxstack  1
    .locals init (class [NHibernate]NHibernate.Engine.ISessionImplementor V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       class [NHibernate]NHibernate.Impl.CriteriaImpl NHibernate.Linq.Util.CriteriaUtil::GetRootCriteria(class [NHibernate]NHibernate.ICriteria)
    IL_0007:  callvirt   instance class [NHibernate]NHibernate.Engine.ISessionImplementor [NHibernate]NHibernate.Impl.CriteriaImpl::get_Session()
    IL_000c:  stloc.0
    IL_000d:  br.s       IL_000f

    IL_000f:  ldloc.0
    IL_0010:  ret
  } // end of method CriteriaUtil::GetSession

  .method private hidebysig static class [NHibernate]NHibernate.Impl.CriteriaImpl 
          GetRootCriteria(class [NHibernate]NHibernate.ICriteria criteria) cil managed
  {
    // Code size       41 (0x29)
    .maxstack  2
    .locals init (class [NHibernate]NHibernate.Impl.CriteriaImpl V_0,
             class [NHibernate]NHibernate.Impl.CriteriaImpl V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  isinst     [NHibernate]NHibernate.Impl.CriteriaImpl
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldnull
    IL_000a:  ceq
    IL_000c:  stloc.2
    IL_000d:  ldloc.2
    IL_000e:  brtrue.s   IL_0014

    IL_0010:  ldloc.0
    IL_0011:  stloc.1
    IL_0012:  br.s       IL_0027

    IL_0014:  ldarg.0
    IL_0015:  castclass  [NHibernate]NHibernate.Impl.CriteriaImpl/Subcriteria
    IL_001a:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.Impl.CriteriaImpl/Subcriteria::get_Parent()
    IL_001f:  call       class [NHibernate]NHibernate.Impl.CriteriaImpl NHibernate.Linq.Util.CriteriaUtil::GetRootCriteria(class [NHibernate]NHibernate.ICriteria)
    IL_0024:  stloc.1
    IL_0025:  br.s       IL_0027

    IL_0027:  ldloc.1
    IL_0028:  ret
  } // end of method CriteriaUtil::GetRootCriteria

  .method private hidebysig static class [mscorlib]System.Type 
          GetRootType(class [NHibernate]NHibernate.Impl.CriteriaImpl criteria) cil managed
  {
    // Code size       102 (0x66)
    .maxstack  2
    .locals init (class [NHibernate]NHibernate.Engine.ISessionFactoryImplementor V_0,
             class [mscorlib]System.Collections.Generic.IDictionary`2<string,class [mscorlib]System.Type> V_1,
             class [mscorlib]System.Type V_2,
             bool V_3)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  callvirt   instance class [NHibernate]NHibernate.Engine.ISessionImplementor [NHibernate]NHibernate.Impl.CriteriaImpl::get_Session()
    IL_0007:  ldnull
    IL_0008:  ceq
    IL_000a:  ldc.i4.0
    IL_000b:  ceq
    IL_000d:  stloc.3
    IL_000e:  ldloc.3
    IL_000f:  brtrue.s   IL_001c

    IL_0011:  ldstr      "Could not get root type on criteria that is not at"
    + "tached to a session"
    IL_0016:  newobj     instance void [mscorlib]System.InvalidOperationException::.ctor(string)
    IL_001b:  throw

    IL_001c:  ldarg.0
    IL_001d:  callvirt   instance class [NHibernate]NHibernate.Engine.ISessionImplementor [NHibernate]NHibernate.Impl.CriteriaImpl::get_Session()
    IL_0022:  callvirt   instance class [NHibernate]NHibernate.Engine.ISessionFactoryImplementor [NHibernate]NHibernate.Engine.ISessionImplementor::get_Factory()
    IL_0027:  stloc.0
    IL_0028:  ldloc.0
    IL_0029:  call       class [mscorlib]System.Collections.Generic.IDictionary`2<string,class [mscorlib]System.Type> NHibernate.Linq.Util.SessionFactoryUtil::GetEntityNameMetaData(class [NHibernate]NHibernate.Engine.ISessionFactoryImplementor)
    IL_002e:  stloc.1
    IL_002f:  ldloc.1
    IL_0030:  ldarg.0
    IL_0031:  callvirt   instance string [NHibernate]NHibernate.Impl.CriteriaImpl::get_EntityOrClassName()
    IL_0036:  callvirt   instance bool class [mscorlib]System.Collections.Generic.IDictionary`2<string,class [mscorlib]System.Type>::ContainsKey(!0)
    IL_003b:  stloc.3
    IL_003c:  ldloc.3
    IL_003d:  brtrue.s   IL_0055

    IL_003f:  ldstr      "Could not find entity named: "
    IL_0044:  ldarg.0
    IL_0045:  callvirt   instance string [NHibernate]NHibernate.Impl.CriteriaImpl::get_EntityOrClassName()
    IL_004a:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_004f:  newobj     instance void [mscorlib]System.InvalidOperationException::.ctor(string)
    IL_0054:  throw

    IL_0055:  ldloc.1
    IL_0056:  ldarg.0
    IL_0057:  callvirt   instance string [NHibernate]NHibernate.Impl.CriteriaImpl::get_EntityOrClassName()
    IL_005c:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.IDictionary`2<string,class [mscorlib]System.Type>::get_Item(!0)
    IL_0061:  stloc.2
    IL_0062:  br.s       IL_0064

    IL_0064:  ldloc.2
    IL_0065:  ret
  } // end of method CriteriaUtil::GetRootType

  .method private hidebysig static class [mscorlib]System.Type 
          GetRootType(class [NHibernate]NHibernate.Criterion.DetachedCriteria criteria,
                      class [NHibernate]NHibernate.ISession session) cil managed
  {
    // Code size       71 (0x47)
    .maxstack  2
    .locals init (class [NHibernate]NHibernate.Engine.ISessionFactoryImplementor V_0,
             class [NHibernate]NHibernate.Persister.Entity.IEntityPersister V_1,
             class [mscorlib]System.Type V_2,
             bool V_3)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [NHibernate]NHibernate.ISessionFactory [NHibernate]NHibernate.ISession::get_SessionFactory()
    IL_0007:  castclass  [NHibernate]NHibernate.Engine.ISessionFactoryImplementor
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  ldarg.0
    IL_000f:  callvirt   instance string [NHibernate]NHibernate.Criterion.DetachedCriteria::get_EntityOrClassName()
    IL_0014:  callvirt   instance class [NHibernate]NHibernate.Persister.Entity.IEntityPersister [NHibernate]NHibernate.Engine.ISessionFactoryImplementor::GetEntityPersister(string)
    IL_0019:  stloc.1
    IL_001a:  ldloc.1
    IL_001b:  ldnull
    IL_001c:  ceq
    IL_001e:  ldc.i4.0
    IL_001f:  ceq
    IL_0021:  stloc.3
    IL_0022:  ldloc.3
    IL_0023:  brtrue.s   IL_003b

    IL_0025:  ldstr      "Could not find entity named: "
    IL_002a:  ldarg.0
    IL_002b:  callvirt   instance string [NHibernate]NHibernate.Criterion.DetachedCriteria::get_EntityOrClassName()
    IL_0030:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0035:  newobj     instance void [mscorlib]System.InvalidOperationException::.ctor(string)
    IL_003a:  throw

    IL_003b:  ldloc.1
    IL_003c:  ldc.i4.0
    IL_003d:  callvirt   instance class [mscorlib]System.Type [NHibernate]NHibernate.Persister.Entity.IEntityPersister::GetMappedClass(valuetype [NHibernate]NHibernate.EntityMode)
    IL_0042:  stloc.2
    IL_0043:  br.s       IL_0045

    IL_0045:  ldloc.2
    IL_0046:  ret
  } // end of method CriteriaUtil::GetRootType

} // end of class NHibernate.Linq.Util.CriteriaUtil

.class public abstract auto ansi sealed beforefieldinit NHibernate.Linq.Util.DetachedCriteriaExtensions
       extends [mscorlib]System.Object
{
  .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig static class [NHibernate]NHibernate.ICriteria 
          Adapt(class [NHibernate]NHibernate.Criterion.DetachedCriteria criteria,
                class [NHibernate]NHibernate.ISession session) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       28 (0x1c)
    .maxstack  3
    .locals init (class [NHibernate]NHibernate.ICriteria V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldnull
    IL_0003:  ceq
    IL_0005:  ldc.i4.0
    IL_0006:  ceq
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  brtrue.s   IL_0010

    IL_000c:  ldnull
    IL_000d:  stloc.0
    IL_000e:  br.s       IL_001a

    IL_0010:  ldarg.0
    IL_0011:  ldarg.1
    IL_0012:  newobj     instance void NHibernate.Linq.Util.DetachedCriteriaAdapter::.ctor(class [NHibernate]NHibernate.Criterion.DetachedCriteria,
                                                                                           class [NHibernate]NHibernate.ISession)
    IL_0017:  stloc.0
    IL_0018:  br.s       IL_001a

    IL_001a:  ldloc.0
    IL_001b:  ret
  } // end of method DetachedCriteriaExtensions::Adapt

} // end of class NHibernate.Linq.Util.DetachedCriteriaExtensions

.class public auto ansi beforefieldinit NHibernate.Linq.Util.DetachedCriteriaAdapter
       extends [mscorlib]System.Object
       implements [NHibernate]NHibernate.ICriteria,
                  [mscorlib]System.ICloneable
{
  .field private initonly class [NHibernate]NHibernate.Criterion.DetachedCriteria detachedCriteria
  .field private initonly class [NHibernate]NHibernate.ISession session
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [NHibernate]NHibernate.Criterion.DetachedCriteria detachedCriteria,
                               class [NHibernate]NHibernate.ISession session) cil managed
  {
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Util.DetachedCriteriaAdapter::detachedCriteria
    IL_000f:  ldarg.0
    IL_0010:  ldarg.2
    IL_0011:  stfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Util.DetachedCriteriaAdapter::session
    IL_0016:  nop
    IL_0017:  ret
  } // end of method DetachedCriteriaAdapter::.ctor

  .method public hidebysig specialname instance class [NHibernate]NHibernate.Criterion.DetachedCriteria 
          get_DetachedCriteria() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (class [NHibernate]NHibernate.Criterion.DetachedCriteria V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Util.DetachedCriteriaAdapter::detachedCriteria
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method DetachedCriteriaAdapter::get_DetachedCriteria

  .method public hidebysig specialname instance class [NHibernate]NHibernate.ISession 
          get_Session() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (class [NHibernate]NHibernate.ISession V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Util.DetachedCriteriaAdapter::session
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method DetachedCriteriaAdapter::get_Session

  .method public hidebysig specialname instance class [NHibernate]NHibernate.Criterion.IProjection 
          get_Projection() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (class [NHibernate]NHibernate.Criterion.IProjection V_0)
    IL_0000:  nop
    IL_0001:  ldnull
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method DetachedCriteriaAdapter::get_Projection

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.ICriteria 
          Add(class [NHibernate]NHibernate.Criterion.ICriterion expression) cil managed
  {
    // Code size       29 (0x1d)
    .maxstack  2
    .locals init (class [NHibernate]NHibernate.ICriteria V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Util.DetachedCriteriaAdapter::detachedCriteria
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::Add(class [NHibernate]NHibernate.Criterion.ICriterion)
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Util.DetachedCriteriaAdapter::session
    IL_0013:  call       class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Util.DetachedCriteriaExtensions::Adapt(class [NHibernate]NHibernate.Criterion.DetachedCriteria,
                                                                                                                       class [NHibernate]NHibernate.ISession)
    IL_0018:  stloc.0
    IL_0019:  br.s       IL_001b

    IL_001b:  ldloc.0
    IL_001c:  ret
  } // end of method DetachedCriteriaAdapter::Add

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.ICriteria 
          AddOrder(class [NHibernate]NHibernate.Criterion.Order order) cil managed
  {
    // Code size       29 (0x1d)
    .maxstack  2
    .locals init (class [NHibernate]NHibernate.ICriteria V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Util.DetachedCriteriaAdapter::detachedCriteria
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::AddOrder(class [NHibernate]NHibernate.Criterion.Order)
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Util.DetachedCriteriaAdapter::session
    IL_0013:  call       class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Util.DetachedCriteriaExtensions::Adapt(class [NHibernate]NHibernate.Criterion.DetachedCriteria,
                                                                                                                       class [NHibernate]NHibernate.ISession)
    IL_0018:  stloc.0
    IL_0019:  br.s       IL_001b

    IL_001b:  ldloc.0
    IL_001c:  ret
  } // end of method DetachedCriteriaAdapter::AddOrder

  .method public hidebysig newslot specialname virtual final 
          instance string  get_Alias() cil managed
  {
    // Code size       17 (0x11)
    .maxstack  1
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Util.DetachedCriteriaAdapter::detachedCriteria
    IL_0007:  callvirt   instance string [NHibernate]NHibernate.Criterion.DetachedCriteria::get_Alias()
    IL_000c:  stloc.0
    IL_000d:  br.s       IL_000f

    IL_000f:  ldloc.0
    IL_0010:  ret
  } // end of method DetachedCriteriaAdapter::get_Alias

  .method public hidebysig instance void 
          ClearOrderds() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor()
    IL_0006:  throw
  } // end of method DetachedCriteriaAdapter::ClearOrderds

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.ICriteria 
          CreateAlias(string associationPath,
                      string alias,
                      valuetype [NHibernate]NHibernate.SqlCommand.JoinType joinType) cil managed
  {
    // Code size       31 (0x1f)
    .maxstack  4
    .locals init (class [NHibernate]NHibernate.ICriteria V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Util.DetachedCriteriaAdapter::detachedCriteria
    IL_0007:  ldarg.1
    IL_0008:  ldarg.2
    IL_0009:  ldarg.3
    IL_000a:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::CreateAlias(string,
                                                                                                                                                         string,
                                                                                                                                                         valuetype [NHibernate]NHibernate.SqlCommand.JoinType)
    IL_000f:  ldarg.0
    IL_0010:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Util.DetachedCriteriaAdapter::session
    IL_0015:  call       class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Util.DetachedCriteriaExtensions::Adapt(class [NHibernate]NHibernate.Criterion.DetachedCriteria,
                                                                                                                       class [NHibernate]NHibernate.ISession)
    IL_001a:  stloc.0
    IL_001b:  br.s       IL_001d

    IL_001d:  ldloc.0
    IL_001e:  ret
  } // end of method DetachedCriteriaAdapter::CreateAlias

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.ICriteria 
          CreateAlias(string associationPath,
                      string alias) cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  3
    .locals init (class [NHibernate]NHibernate.ICriteria V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Util.DetachedCriteriaAdapter::detachedCriteria
    IL_0007:  ldarg.1
    IL_0008:  ldarg.2
    IL_0009:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::CreateAlias(string,
                                                                                                                                                         string)
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Util.DetachedCriteriaAdapter::session
    IL_0014:  call       class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Util.DetachedCriteriaExtensions::Adapt(class [NHibernate]NHibernate.Criterion.DetachedCriteria,
                                                                                                                       class [NHibernate]NHibernate.ISession)
    IL_0019:  stloc.0
    IL_001a:  br.s       IL_001c

    IL_001c:  ldloc.0
    IL_001d:  ret
  } // end of method DetachedCriteriaAdapter::CreateAlias

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.ICriteria 
          CreateCriteria(string associationPath,
                         string alias,
                         valuetype [NHibernate]NHibernate.SqlCommand.JoinType joinType) cil managed
  {
    // Code size       31 (0x1f)
    .maxstack  4
    .locals init (class [NHibernate]NHibernate.ICriteria V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Util.DetachedCriteriaAdapter::detachedCriteria
    IL_0007:  ldarg.1
    IL_0008:  ldarg.2
    IL_0009:  ldarg.3
    IL_000a:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::CreateCriteria(string,
                                                                                                                                                            string,
                                                                                                                                                            valuetype [NHibernate]NHibernate.SqlCommand.JoinType)
    IL_000f:  ldarg.0
    IL_0010:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Util.DetachedCriteriaAdapter::session
    IL_0015:  call       class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Util.DetachedCriteriaExtensions::Adapt(class [NHibernate]NHibernate.Criterion.DetachedCriteria,
                                                                                                                       class [NHibernate]NHibernate.ISession)
    IL_001a:  stloc.0
    IL_001b:  br.s       IL_001d

    IL_001d:  ldloc.0
    IL_001e:  ret
  } // end of method DetachedCriteriaAdapter::CreateCriteria

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.ICriteria 
          CreateCriteria(string associationPath,
                         string alias) cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  3
    .locals init (class [NHibernate]NHibernate.ICriteria V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Util.DetachedCriteriaAdapter::detachedCriteria
    IL_0007:  ldarg.1
    IL_0008:  ldarg.2
    IL_0009:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::CreateCriteria(string,
                                                                                                                                                            string)
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Util.DetachedCriteriaAdapter::session
    IL_0014:  call       class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Util.DetachedCriteriaExtensions::Adapt(class [NHibernate]NHibernate.Criterion.DetachedCriteria,
                                                                                                                       class [NHibernate]NHibernate.ISession)
    IL_0019:  stloc.0
    IL_001a:  br.s       IL_001c

    IL_001c:  ldloc.0
    IL_001d:  ret
  } // end of method DetachedCriteriaAdapter::CreateCriteria

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.ICriteria 
          CreateCriteria(string associationPath,
                         valuetype [NHibernate]NHibernate.SqlCommand.JoinType joinType) cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  3
    .locals init (class [NHibernate]NHibernate.ICriteria V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Util.DetachedCriteriaAdapter::detachedCriteria
    IL_0007:  ldarg.1
    IL_0008:  ldarg.2
    IL_0009:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::CreateCriteria(string,
                                                                                                                                                            valuetype [NHibernate]NHibernate.SqlCommand.JoinType)
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Util.DetachedCriteriaAdapter::session
    IL_0014:  call       class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Util.DetachedCriteriaExtensions::Adapt(class [NHibernate]NHibernate.Criterion.DetachedCriteria,
                                                                                                                       class [NHibernate]NHibernate.ISession)
    IL_0019:  stloc.0
    IL_001a:  br.s       IL_001c

    IL_001c:  ldloc.0
    IL_001d:  ret
  } // end of method DetachedCriteriaAdapter::CreateCriteria

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.ICriteria 
          CreateCriteria(string associationPath) cil managed
  {
    // Code size       29 (0x1d)
    .maxstack  2
    .locals init (class [NHibernate]NHibernate.ICriteria V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Util.DetachedCriteriaAdapter::detachedCriteria
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::CreateCriteria(string)
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Util.DetachedCriteriaAdapter::session
    IL_0013:  call       class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Util.DetachedCriteriaExtensions::Adapt(class [NHibernate]NHibernate.Criterion.DetachedCriteria,
                                                                                                                       class [NHibernate]NHibernate.ISession)
    IL_0018:  stloc.0
    IL_0019:  br.s       IL_001b

    IL_001b:  ldloc.0
    IL_001c:  ret
  } // end of method DetachedCriteriaAdapter::CreateCriteria

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.ICriteria 
          GetCriteriaByAlias(string alias) cil managed
  {
    // Code size       29 (0x1d)
    .maxstack  2
    .locals init (class [NHibernate]NHibernate.ICriteria V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Util.DetachedCriteriaAdapter::detachedCriteria
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::GetCriteriaByAlias(string)
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Util.DetachedCriteriaAdapter::session
    IL_0013:  call       class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Util.DetachedCriteriaExtensions::Adapt(class [NHibernate]NHibernate.Criterion.DetachedCriteria,
                                                                                                                       class [NHibernate]NHibernate.ISession)
    IL_0018:  stloc.0
    IL_0019:  br.s       IL_001b

    IL_001b:  ldloc.0
    IL_001c:  ret
  } // end of method DetachedCriteriaAdapter::GetCriteriaByAlias

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.ICriteria 
          GetCriteriaByPath(string path) cil managed
  {
    // Code size       29 (0x1d)
    .maxstack  2
    .locals init (class [NHibernate]NHibernate.ICriteria V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Util.DetachedCriteriaAdapter::detachedCriteria
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::GetCriteriaByPath(string)
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Util.DetachedCriteriaAdapter::session
    IL_0013:  call       class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Util.DetachedCriteriaExtensions::Adapt(class [NHibernate]NHibernate.Criterion.DetachedCriteria,
                                                                                                                       class [NHibernate]NHibernate.ISession)
    IL_0018:  stloc.0
    IL_0019:  br.s       IL_001b

    IL_001b:  ldloc.0
    IL_001c:  ret
  } // end of method DetachedCriteriaAdapter::GetCriteriaByPath

  .method public hidebysig newslot virtual final 
          instance class [mscorlib]System.Collections.Generic.IList`1<!!T> 
          List<T>() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor()
    IL_0006:  throw
  } // end of method DetachedCriteriaAdapter::List

  .method public hidebysig newslot virtual final 
          instance void  List(class [mscorlib]System.Collections.IList results) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor()
    IL_0006:  throw
  } // end of method DetachedCriteriaAdapter::List

  .method public hidebysig newslot virtual final 
          instance class [mscorlib]System.Collections.IList 
          List() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor()
    IL_0006:  throw
  } // end of method DetachedCriteriaAdapter::List

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.ICriteria 
          SetCacheMode(valuetype [NHibernate]NHibernate.CacheMode cacheMode) cil managed
  {
    // Code size       29 (0x1d)
    .maxstack  2
    .locals init (class [NHibernate]NHibernate.ICriteria V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Util.DetachedCriteriaAdapter::detachedCriteria
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::SetCacheMode(valuetype [NHibernate]NHibernate.CacheMode)
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Util.DetachedCriteriaAdapter::session
    IL_0013:  call       class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Util.DetachedCriteriaExtensions::Adapt(class [NHibernate]NHibernate.Criterion.DetachedCriteria,
                                                                                                                       class [NHibernate]NHibernate.ISession)
    IL_0018:  stloc.0
    IL_0019:  br.s       IL_001b

    IL_001b:  ldloc.0
    IL_001c:  ret
  } // end of method DetachedCriteriaAdapter::SetCacheMode

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.ICriteria 
          SetCacheRegion(string cacheRegion) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor()
    IL_0006:  throw
  } // end of method DetachedCriteriaAdapter::SetCacheRegion

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.ICriteria 
          SetCacheable(bool cacheable) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor()
    IL_0006:  throw
  } // end of method DetachedCriteriaAdapter::SetCacheable

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.ICriteria 
          SetComment(string comment) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor()
    IL_0006:  throw
  } // end of method DetachedCriteriaAdapter::SetComment

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.ICriteria 
          SetFetchMode(string associationPath,
                       valuetype [NHibernate]NHibernate.FetchMode mode) cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  3
    .locals init (class [NHibernate]NHibernate.ICriteria V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Util.DetachedCriteriaAdapter::detachedCriteria
    IL_0007:  ldarg.1
    IL_0008:  ldarg.2
    IL_0009:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::SetFetchMode(string,
                                                                                                                                                          valuetype [NHibernate]NHibernate.FetchMode)
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Util.DetachedCriteriaAdapter::session
    IL_0014:  call       class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Util.DetachedCriteriaExtensions::Adapt(class [NHibernate]NHibernate.Criterion.DetachedCriteria,
                                                                                                                       class [NHibernate]NHibernate.ISession)
    IL_0019:  stloc.0
    IL_001a:  br.s       IL_001c

    IL_001c:  ldloc.0
    IL_001d:  ret
  } // end of method DetachedCriteriaAdapter::SetFetchMode

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.ICriteria 
          SetFetchSize(int32 fetchSize) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor()
    IL_0006:  throw
  } // end of method DetachedCriteriaAdapter::SetFetchSize

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.ICriteria 
          SetFirstResult(int32 firstResult) cil managed
  {
    // Code size       29 (0x1d)
    .maxstack  2
    .locals init (class [NHibernate]NHibernate.ICriteria V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Util.DetachedCriteriaAdapter::detachedCriteria
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::SetFirstResult(int32)
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Util.DetachedCriteriaAdapter::session
    IL_0013:  call       class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Util.DetachedCriteriaExtensions::Adapt(class [NHibernate]NHibernate.Criterion.DetachedCriteria,
                                                                                                                       class [NHibernate]NHibernate.ISession)
    IL_0018:  stloc.0
    IL_0019:  br.s       IL_001b

    IL_001b:  ldloc.0
    IL_001c:  ret
  } // end of method DetachedCriteriaAdapter::SetFirstResult

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.ICriteria 
          SetFlushMode(valuetype [NHibernate]NHibernate.FlushMode flushMode) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor()
    IL_0006:  throw
  } // end of method DetachedCriteriaAdapter::SetFlushMode

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.ICriteria 
          SetLockMode(string alias,
                      class [NHibernate]NHibernate.LockMode lockMode) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor()
    IL_0006:  throw
  } // end of method DetachedCriteriaAdapter::SetLockMode

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.ICriteria 
          SetLockMode(class [NHibernate]NHibernate.LockMode lockMode) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor()
    IL_0006:  throw
  } // end of method DetachedCriteriaAdapter::SetLockMode

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.ICriteria 
          SetMaxResults(int32 maxResults) cil managed
  {
    // Code size       29 (0x1d)
    .maxstack  2
    .locals init (class [NHibernate]NHibernate.ICriteria V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Util.DetachedCriteriaAdapter::detachedCriteria
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::SetMaxResults(int32)
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Util.DetachedCriteriaAdapter::session
    IL_0013:  call       class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Util.DetachedCriteriaExtensions::Adapt(class [NHibernate]NHibernate.Criterion.DetachedCriteria,
                                                                                                                       class [NHibernate]NHibernate.ISession)
    IL_0018:  stloc.0
    IL_0019:  br.s       IL_001b

    IL_001b:  ldloc.0
    IL_001c:  ret
  } // end of method DetachedCriteriaAdapter::SetMaxResults

  .method public hidebysig instance class [NHibernate]NHibernate.ICriteria 
          SetProjection(class [NHibernate]NHibernate.Criterion.IProjection projection) cil managed
  {
    // Code size       29 (0x1d)
    .maxstack  2
    .locals init (class [NHibernate]NHibernate.ICriteria V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Util.DetachedCriteriaAdapter::detachedCriteria
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::SetProjection(class [NHibernate]NHibernate.Criterion.IProjection)
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Util.DetachedCriteriaAdapter::session
    IL_0013:  call       class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Util.DetachedCriteriaExtensions::Adapt(class [NHibernate]NHibernate.Criterion.DetachedCriteria,
                                                                                                                       class [NHibernate]NHibernate.ISession)
    IL_0018:  stloc.0
    IL_0019:  br.s       IL_001b

    IL_001b:  ldloc.0
    IL_001c:  ret
  } // end of method DetachedCriteriaAdapter::SetProjection

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.ICriteria 
          SetProjection(class [NHibernate]NHibernate.Criterion.IProjection[] projections) cil managed
  {
    .param [1]
    .custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       75 (0x4b)
    .maxstack  2
    .locals init (class [NHibernate]NHibernate.Criterion.ProjectionList V_0,
             class [NHibernate]NHibernate.Criterion.IProjection V_1,
             class [NHibernate]NHibernate.ICriteria V_2,
             class [NHibernate]NHibernate.Criterion.IProjection[] V_3,
             int32 V_4,
             bool V_5)
    IL_0000:  nop
    IL_0001:  call       class [NHibernate]NHibernate.Criterion.ProjectionList [NHibernate]NHibernate.Criterion.Projections::ProjectionList()
    IL_0006:  stloc.0
    IL_0007:  nop
    IL_0008:  ldarg.1
    IL_0009:  stloc.3
    IL_000a:  ldc.i4.0
    IL_000b:  stloc.s    V_4
    IL_000d:  br.s       IL_0022

    IL_000f:  ldloc.3
    IL_0010:  ldloc.s    V_4
    IL_0012:  ldelem.ref
    IL_0013:  stloc.1
    IL_0014:  ldloc.0
    IL_0015:  ldloc.1
    IL_0016:  callvirt   instance class [NHibernate]NHibernate.Criterion.ProjectionList [NHibernate]NHibernate.Criterion.ProjectionList::Add(class [NHibernate]NHibernate.Criterion.IProjection)
    IL_001b:  pop
    IL_001c:  ldloc.s    V_4
    IL_001e:  ldc.i4.1
    IL_001f:  add
    IL_0020:  stloc.s    V_4
    IL_0022:  ldloc.s    V_4
    IL_0024:  ldloc.3
    IL_0025:  ldlen
    IL_0026:  conv.i4
    IL_0027:  clt
    IL_0029:  stloc.s    V_5
    IL_002b:  ldloc.s    V_5
    IL_002d:  brtrue.s   IL_000f

    IL_002f:  ldarg.0
    IL_0030:  ldfld      class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Util.DetachedCriteriaAdapter::detachedCriteria
    IL_0035:  ldloc.0
    IL_0036:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::SetProjection(class [NHibernate]NHibernate.Criterion.IProjection)
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Util.DetachedCriteriaAdapter::session
    IL_0041:  call       class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Util.DetachedCriteriaExtensions::Adapt(class [NHibernate]NHibernate.Criterion.DetachedCriteria,
                                                                                                                       class [NHibernate]NHibernate.ISession)
    IL_0046:  stloc.2
    IL_0047:  br.s       IL_0049

    IL_0049:  ldloc.2
    IL_004a:  ret
  } // end of method DetachedCriteriaAdapter::SetProjection

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.ICriteria 
          SetResultTransformer(class [NHibernate]NHibernate.Transform.IResultTransformer resultTransformer) cil managed
  {
    // Code size       29 (0x1d)
    .maxstack  2
    .locals init (class [NHibernate]NHibernate.ICriteria V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Util.DetachedCriteriaAdapter::detachedCriteria
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::SetResultTransformer(class [NHibernate]NHibernate.Transform.IResultTransformer)
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Util.DetachedCriteriaAdapter::session
    IL_0013:  call       class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Util.DetachedCriteriaExtensions::Adapt(class [NHibernate]NHibernate.Criterion.DetachedCriteria,
                                                                                                                       class [NHibernate]NHibernate.ISession)
    IL_0018:  stloc.0
    IL_0019:  br.s       IL_001b

    IL_001b:  ldloc.0
    IL_001c:  ret
  } // end of method DetachedCriteriaAdapter::SetResultTransformer

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.ICriteria 
          SetTimeout(int32 timeout) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor()
    IL_0006:  throw
  } // end of method DetachedCriteriaAdapter::SetTimeout

  .method public hidebysig newslot virtual final 
          instance !!T  UniqueResult<T>() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor()
    IL_0006:  throw
  } // end of method DetachedCriteriaAdapter::UniqueResult

  .method public hidebysig newslot virtual final 
          instance object  UniqueResult() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor()
    IL_0006:  throw
  } // end of method DetachedCriteriaAdapter::UniqueResult

  .method public hidebysig newslot virtual final 
          instance class [mscorlib]System.Type 
          GetRootEntityTypeIfAvailable() cil managed
  {
    // Code size       17 (0x11)
    .maxstack  1
    .locals init (class [mscorlib]System.Type V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Util.DetachedCriteriaAdapter::detachedCriteria
    IL_0007:  callvirt   instance class [mscorlib]System.Type [NHibernate]NHibernate.Criterion.DetachedCriteria::GetRootEntityTypeIfAvailable()
    IL_000c:  stloc.0
    IL_000d:  br.s       IL_000f

    IL_000f:  ldloc.0
    IL_0010:  ret
  } // end of method DetachedCriteriaAdapter::GetRootEntityTypeIfAvailable

  .method public hidebysig newslot virtual final 
          instance void  ClearOrders() cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Util.DetachedCriteriaAdapter::detachedCriteria
    IL_0007:  callvirt   instance void [NHibernate]NHibernate.Criterion.DetachedCriteria::ClearOrders()
    IL_000c:  nop
    IL_000d:  ret
  } // end of method DetachedCriteriaAdapter::ClearOrders

  .method public hidebysig newslot virtual final 
          instance class [mscorlib]System.Collections.Generic.IEnumerable`1<!!T> 
          Future<T>() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor()
    IL_0006:  throw
  } // end of method DetachedCriteriaAdapter::Future

  .method public hidebysig newslot virtual final 
          instance class [NHibernate]NHibernate.IFutureValue`1<!!T> 
          FutureValue<T>() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor()
    IL_0006:  throw
  } // end of method DetachedCriteriaAdapter::FutureValue

  .method public hidebysig newslot virtual final 
          instance object  Clone() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor()
    IL_0006:  throw
  } // end of method DetachedCriteriaAdapter::Clone

  .property instance class [NHibernate]NHibernate.Criterion.DetachedCriteria
          DetachedCriteria()
  {
    .get instance class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Util.DetachedCriteriaAdapter::get_DetachedCriteria()
  } // end of property DetachedCriteriaAdapter::DetachedCriteria
  .property instance class [NHibernate]NHibernate.ISession
          Session()
  {
    .get instance class [NHibernate]NHibernate.ISession NHibernate.Linq.Util.DetachedCriteriaAdapter::get_Session()
  } // end of property DetachedCriteriaAdapter::Session
  .property instance class [NHibernate]NHibernate.Criterion.IProjection
          Projection()
  {
    .get instance class [NHibernate]NHibernate.Criterion.IProjection NHibernate.Linq.Util.DetachedCriteriaAdapter::get_Projection()
  } // end of property DetachedCriteriaAdapter::Projection
  .property instance string Alias()
  {
    .get instance string NHibernate.Linq.Util.DetachedCriteriaAdapter::get_Alias()
  } // end of property DetachedCriteriaAdapter::Alias
} // end of class NHibernate.Linq.Util.DetachedCriteriaAdapter

.class public abstract auto ansi sealed beforefieldinit NHibernate.Linq.Util.LinqUtil
       extends [mscorlib]System.Object
{
  .class auto ansi sealed nested private beforefieldinit '<Iterate>d__0`1'<T>
         extends [mscorlib]System.Object
         implements class [mscorlib]System.Collections.Generic.IEnumerable`1<!T>,
                    [mscorlib]System.Collections.IEnumerable,
                    class [mscorlib]System.Collections.Generic.IEnumerator`1<!T>,
                    [mscorlib]System.Collections.IEnumerator,
                    [mscorlib]System.IDisposable
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field private !T '<>2__current'
    .field private int32 '<>1__state'
    .field private int32 '<>l__initialThreadId'
    .field public class [System.Core]System.Func`2<!T,!T> func
    .field public class [System.Core]System.Func`2<!T,!T> '<>3__func'
    .field public !T initialValue
    .field public !T '<>3__initialValue'
    .field public !T '<value>5__1'
    .method private hidebysig newslot virtual final 
            instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!T> 
            'System.Collections.Generic.IEnumerable<T>.GetEnumerator'() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.Generic.IEnumerable`1<!T>::GetEnumerator()
      // Code size       86 (0x56)
      .maxstack  2
      .locals init (class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!T> V_0,
               class [mscorlib]System.Collections.Generic.IEnumerator`1<!T> V_1,
               bool V_2)
      IL_0000:  call       class [mscorlib]System.Threading.Thread [mscorlib]System.Threading.Thread::get_CurrentThread()
      IL_0005:  callvirt   instance int32 [mscorlib]System.Threading.Thread::get_ManagedThreadId()
      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!T>::'<>l__initialThreadId'
      IL_0010:  bne.un.s   IL_0021

      IL_0012:  ldarg.0
      IL_0013:  ldfld      int32 class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!T>::'<>1__state'
      IL_0018:  ldc.i4.s   -2
      IL_001a:  ceq
      IL_001c:  ldc.i4.0
      IL_001d:  ceq
      IL_001f:  br.s       IL_0022

      IL_0021:  ldc.i4.1
      IL_0022:  stloc.2
      IL_0023:  ldloc.2
      IL_0024:  brtrue.s   IL_0031

      IL_0026:  ldarg.0
      IL_0027:  ldc.i4.0
      IL_0028:  stfld      int32 class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!T>::'<>1__state'
      IL_002d:  ldarg.0
      IL_002e:  stloc.0
      IL_002f:  br.s       IL_0038

      IL_0031:  ldc.i4.0
      IL_0032:  newobj     instance void class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!T>::.ctor(int32)
      IL_0037:  stloc.0
      IL_0038:  ldloc.0
      IL_0039:  ldarg.0
      IL_003a:  ldfld      class [System.Core]System.Func`2<!0,!0> class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!T>::'<>3__func'
      IL_003f:  stfld      class [System.Core]System.Func`2<!0,!0> class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!T>::func
      IL_0044:  ldloc.0
      IL_0045:  ldarg.0
      IL_0046:  ldfld      !0 class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!T>::'<>3__initialValue'
      IL_004b:  stfld      !0 class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!T>::initialValue
      IL_0050:  ldloc.0
      IL_0051:  stloc.1
      IL_0052:  br.s       IL_0054

      IL_0054:  ldloc.1
      IL_0055:  ret
    } // end of method '<Iterate>d__0`1'::'System.Collections.Generic.IEnumerable<T>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [mscorlib]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [mscorlib]System.Collections.IEnumerable::GetEnumerator
      // Code size       11 (0xb)
      .maxstack  1
      .locals init (class [mscorlib]System.Collections.IEnumerator V_0)
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!T>::'System.Collections.Generic.IEnumerable<T>.GetEnumerator'()
      IL_0006:  stloc.0
      IL_0007:  br.s       IL_0009

      IL_0009:  ldloc.0
      IL_000a:  ret
    } // end of method '<Iterate>d__0`1'::System.Collections.IEnumerable.GetEnumerator

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [mscorlib]System.Collections.IEnumerator::MoveNext
      // Code size       116 (0x74)
      .maxstack  3
      .locals init (bool V_0,
               int32 V_1,
               bool V_2)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!T>::'<>1__state'
      IL_0006:  stloc.1
      IL_0007:  ldloc.1
      IL_0008:  switch     ( 
                            IL_0019,
                            IL_0017)
      IL_0015:  br.s       IL_001b

      IL_0017:  br.s       IL_004b

      IL_0019:  br.s       IL_001d

      IL_001b:  br.s       IL_006e

      IL_001d:  ldarg.0
      IL_001e:  ldc.i4.m1
      IL_001f:  stfld      int32 class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!T>::'<>1__state'
      IL_0024:  nop
      IL_0025:  ldarg.0
      IL_0026:  ldarg.0
      IL_0027:  ldfld      !0 class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!T>::initialValue
      IL_002c:  stfld      !0 class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!T>::'<value>5__1'
      IL_0031:  br.s       IL_006a

      IL_0033:  nop
      IL_0034:  ldarg.0
      IL_0035:  ldarg.0
      IL_0036:  ldfld      !0 class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!T>::'<value>5__1'
      IL_003b:  stfld      !0 class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!T>::'<>2__current'
      IL_0040:  ldarg.0
      IL_0041:  ldc.i4.1
      IL_0042:  stfld      int32 class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!T>::'<>1__state'
      IL_0047:  ldc.i4.1
      IL_0048:  stloc.0
      IL_0049:  br.s       IL_0072

      IL_004b:  ldarg.0
      IL_004c:  ldc.i4.m1
      IL_004d:  stfld      int32 class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!T>::'<>1__state'
      IL_0052:  ldarg.0
      IL_0053:  ldarg.0
      IL_0054:  ldfld      class [System.Core]System.Func`2<!0,!0> class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!T>::func
      IL_0059:  ldarg.0
      IL_005a:  ldfld      !0 class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!T>::'<value>5__1'
      IL_005f:  callvirt   instance !1 class [System.Core]System.Func`2<!T,!T>::Invoke(!0)
      IL_0064:  stfld      !0 class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!T>::'<value>5__1'
      IL_0069:  nop
      IL_006a:  ldc.i4.1
      IL_006b:  stloc.2
      IL_006c:  br.s       IL_0033

      IL_006e:  ldc.i4.0
      IL_006f:  stloc.0
      IL_0070:  br.s       IL_0072

      IL_0072:  ldloc.0
      IL_0073:  ret
    } // end of method '<Iterate>d__0`1'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance !T  'System.Collections.Generic.IEnumerator<T>.get_Current'() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<!T>::get_Current()
      // Code size       11 (0xb)
      .maxstack  1
      .locals init (!T V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      !0 class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!T>::'<>2__current'
      IL_0006:  stloc.0
      IL_0007:  br.s       IL_0009

      IL_0009:  ldloc.0
      IL_000a:  ret
    } // end of method '<Iterate>d__0`1'::'System.Collections.Generic.IEnumerator<T>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [mscorlib]System.Collections.IEnumerator::Reset
      // Code size       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<Iterate>d__0`1'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .override [mscorlib]System.IDisposable::Dispose
      // Code size       2 (0x2)
      .maxstack  8
      IL_0000:  nop
      IL_0001:  ret
    } // end of method '<Iterate>d__0`1'::System.IDisposable.Dispose

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [mscorlib]System.Collections.IEnumerator::get_Current
      // Code size       16 (0x10)
      .maxstack  1
      .locals init (object V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      !0 class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!T>::'<>2__current'
      IL_0006:  box        !T
      IL_000b:  stloc.0
      IL_000c:  br.s       IL_000e

      IL_000e:  ldloc.0
      IL_000f:  ret
    } // end of method '<Iterate>d__0`1'::System.Collections.IEnumerator.get_Current

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(int32 '<>1__state') cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       30 (0x1e)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldarg.1
      IL_0008:  stfld      int32 class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!T>::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       class [mscorlib]System.Threading.Thread [mscorlib]System.Threading.Thread::get_CurrentThread()
      IL_0013:  callvirt   instance int32 [mscorlib]System.Threading.Thread::get_ManagedThreadId()
      IL_0018:  stfld      int32 class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!T>::'<>l__initialThreadId'
      IL_001d:  ret
    } // end of method '<Iterate>d__0`1'::.ctor

    .property instance !T 'System.Collections.Generic.IEnumerator<T>.Current'()
    {
      .get instance !T NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'::'System.Collections.Generic.IEnumerator<T>.get_Current'()
    } // end of property '<Iterate>d__0`1'::'System.Collections.Generic.IEnumerator<T>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'::System.Collections.IEnumerator.get_Current()
    } // end of property '<Iterate>d__0`1'::System.Collections.IEnumerator.Current
  } // end of class '<Iterate>d__0`1'

  .method public hidebysig static class [mscorlib]System.Collections.Generic.IEnumerable`1<!!T> 
          Iterate<T>(class [System.Core]System.Func`2<!!T,!!T> func,
                     !!T initialValue) cil managed
  {
    // Code size       28 (0x1c)
    .maxstack  2
    .locals init (class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!!T> V_0,
             class [mscorlib]System.Collections.Generic.IEnumerable`1<!!T> V_1)
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!!T>::.ctor(int32)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldarg.0
    IL_000a:  stfld      class [System.Core]System.Func`2<!0,!0> class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!!T>::'<>3__func'
    IL_000f:  ldloc.0
    IL_0010:  ldarg.1
    IL_0011:  stfld      !0 class NHibernate.Linq.Util.LinqUtil/'<Iterate>d__0`1'<!!T>::'<>3__initialValue'
    IL_0016:  ldloc.0
    IL_0017:  stloc.1
    IL_0018:  br.s       IL_001a

    IL_001a:  ldloc.1
    IL_001b:  ret
  } // end of method LinqUtil::Iterate

  .method public hidebysig static object 
          ChangeType(object 'value',
                     class [mscorlib]System.Type conversionType) cil managed
  {
    // Code size       262 (0x106)
    .maxstack  5
    .locals init (class [mscorlib]System.Type V_0,
             object V_1,
             bool V_2,
             object[] V_3)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  brfalse.s  IL_0012

    IL_0004:  ldarg.1
    IL_0005:  ldarg.0
    IL_0006:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_000b:  callvirt   instance bool [mscorlib]System.Type::IsAssignableFrom(class [mscorlib]System.Type)
    IL_0010:  br.s       IL_0013

    IL_0012:  ldc.i4.1
    IL_0013:  stloc.2
    IL_0014:  ldloc.2
    IL_0015:  brtrue     IL_0100

    IL_001a:  nop
    IL_001b:  ldarg.1
    IL_001c:  call       bool NHibernate.Linq.Util.LinqUtil::IsNullableType(class [mscorlib]System.Type)
    IL_0021:  ldc.i4.0
    IL_0022:  ceq
    IL_0024:  stloc.2
    IL_0025:  ldloc.2
    IL_0026:  brtrue     IL_00b4

    IL_002b:  nop
    IL_002c:  ldarg.1
    IL_002d:  callvirt   instance class [mscorlib]System.Type[] [mscorlib]System.Type::GetGenericArguments()
    IL_0032:  ldc.i4.0
    IL_0033:  ldelem.ref
    IL_0034:  stloc.0
    IL_0035:  ldloc.0
    IL_0036:  callvirt   instance bool [mscorlib]System.Type::get_IsEnum()
    IL_003b:  ldc.i4.0
    IL_003c:  ceq
    IL_003e:  stloc.2
    IL_003f:  ldloc.2
    IL_0040:  brtrue.s   IL_0095

    IL_0042:  nop
    IL_0043:  ldarg.0
    IL_0044:  isinst     [mscorlib]System.String
    IL_0049:  ldnull
    IL_004a:  cgt.un
    IL_004c:  ldc.i4.0
    IL_004d:  ceq
    IL_004f:  stloc.2
    IL_0050:  ldloc.2
    IL_0051:  brtrue.s   IL_0076

    IL_0053:  nop
    IL_0054:  ldarg.1
    IL_0055:  ldc.i4.1
    IL_0056:  newarr     [mscorlib]System.Object
    IL_005b:  stloc.3
    IL_005c:  ldloc.3
    IL_005d:  ldc.i4.0
    IL_005e:  ldloc.0
    IL_005f:  ldarg.0
    IL_0060:  isinst     [mscorlib]System.String
    IL_0065:  call       object [mscorlib]System.Enum::Parse(class [mscorlib]System.Type,
                                                             string)
    IL_006a:  stelem.ref
    IL_006b:  ldloc.3
    IL_006c:  call       object [mscorlib]System.Activator::CreateInstance(class [mscorlib]System.Type,
                                                                           object[])
    IL_0071:  starg.s    'value'
    IL_0073:  nop
    IL_0074:  br.s       IL_0092

    IL_0076:  nop
    IL_0077:  ldarg.1
    IL_0078:  ldc.i4.1
    IL_0079:  newarr     [mscorlib]System.Object
    IL_007e:  stloc.3
    IL_007f:  ldloc.3
    IL_0080:  ldc.i4.0
    IL_0081:  ldloc.0
    IL_0082:  ldarg.0
    IL_0083:  call       object [mscorlib]System.Enum::ToObject(class [mscorlib]System.Type,
                                                                object)
    IL_0088:  stelem.ref
    IL_0089:  ldloc.3
    IL_008a:  call       object [mscorlib]System.Activator::CreateInstance(class [mscorlib]System.Type,
                                                                           object[])
    IL_008f:  starg.s    'value'
    IL_0091:  nop
    IL_0092:  nop
    IL_0093:  br.s       IL_00b1

    IL_0095:  nop
    IL_0096:  ldarg.1
    IL_0097:  ldc.i4.1
    IL_0098:  newarr     [mscorlib]System.Object
    IL_009d:  stloc.3
    IL_009e:  ldloc.3
    IL_009f:  ldc.i4.0
    IL_00a0:  ldarg.0
    IL_00a1:  ldloc.0
    IL_00a2:  call       object [mscorlib]System.Convert::ChangeType(object,
                                                                     class [mscorlib]System.Type)
    IL_00a7:  stelem.ref
    IL_00a8:  ldloc.3
    IL_00a9:  call       object [mscorlib]System.Activator::CreateInstance(class [mscorlib]System.Type,
                                                                           object[])
    IL_00ae:  starg.s    'value'
    IL_00b0:  nop
    IL_00b1:  nop
    IL_00b2:  br.s       IL_00ff

    IL_00b4:  nop
    IL_00b5:  ldarg.1
    IL_00b6:  callvirt   instance bool [mscorlib]System.Type::get_IsEnum()
    IL_00bb:  ldc.i4.0
    IL_00bc:  ceq
    IL_00be:  stloc.2
    IL_00bf:  ldloc.2
    IL_00c0:  brtrue.s   IL_00f3

    IL_00c2:  nop
    IL_00c3:  ldarg.0
    IL_00c4:  isinst     [mscorlib]System.String
    IL_00c9:  ldnull
    IL_00ca:  cgt.un
    IL_00cc:  ldc.i4.0
    IL_00cd:  ceq
    IL_00cf:  stloc.2
    IL_00d0:  ldloc.2
    IL_00d1:  brtrue.s   IL_00e5

    IL_00d3:  nop
    IL_00d4:  ldarg.1
    IL_00d5:  ldarg.0
    IL_00d6:  isinst     [mscorlib]System.String
    IL_00db:  call       object [mscorlib]System.Enum::Parse(class [mscorlib]System.Type,
                                                             string)
    IL_00e0:  starg.s    'value'
    IL_00e2:  nop
    IL_00e3:  br.s       IL_00f0

    IL_00e5:  nop
    IL_00e6:  ldarg.1
    IL_00e7:  ldarg.0
    IL_00e8:  call       object [mscorlib]System.Enum::ToObject(class [mscorlib]System.Type,
                                                                object)
    IL_00ed:  starg.s    'value'
    IL_00ef:  nop
    IL_00f0:  nop
    IL_00f1:  br.s       IL_00fe

    IL_00f3:  nop
    IL_00f4:  ldarg.0
    IL_00f5:  ldarg.1
    IL_00f6:  call       object [mscorlib]System.Convert::ChangeType(object,
                                                                     class [mscorlib]System.Type)
    IL_00fb:  starg.s    'value'
    IL_00fd:  nop
    IL_00fe:  nop
    IL_00ff:  nop
    IL_0100:  ldarg.0
    IL_0101:  stloc.1
    IL_0102:  br.s       IL_0104

    IL_0104:  ldloc.1
    IL_0105:  ret
  } // end of method LinqUtil::ChangeType

  .method public hidebysig static bool  IsNullableType(class [mscorlib]System.Type 'type') cil managed
  {
    // Code size       38 (0x26)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  brfalse.s  IL_0020

    IL_0004:  ldarg.0
    IL_0005:  callvirt   instance bool [mscorlib]System.Type::get_IsGenericType()
    IL_000a:  brfalse.s  IL_0020

    IL_000c:  ldarg.0
    IL_000d:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Type::GetGenericTypeDefinition()
    IL_0012:  ldtoken    [mscorlib]System.Nullable`1
    IL_0017:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_001c:  ceq
    IL_001e:  br.s       IL_0021

    IL_0020:  ldc.i4.0
    IL_0021:  stloc.0
    IL_0022:  br.s       IL_0024

    IL_0024:  ldloc.0
    IL_0025:  ret
  } // end of method LinqUtil::IsNullableType

  .method public hidebysig static bool  IsAnonymousType(class [mscorlib]System.Type 'type') cil managed
  {
    // Code size       28 (0x1c)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  brfalse.s  IL_0016

    IL_0004:  ldarg.0
    IL_0005:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_000a:  ldstr      "<"
    IL_000f:  callvirt   instance bool [mscorlib]System.String::StartsWith(string)
    IL_0014:  br.s       IL_0017

    IL_0016:  ldc.i4.0
    IL_0017:  stloc.0
    IL_0018:  br.s       IL_001a

    IL_001a:  ldloc.0
    IL_001b:  ret
  } // end of method LinqUtil::IsAnonymousType

  .method public hidebysig static string 
          SqlEncode(object 'value') cil managed
  {
    // Code size       229 (0xe5)
    .maxstack  4
    .locals init (class [mscorlib]System.Type V_0,
             string V_1,
             bool V_2,
             valuetype [mscorlib]System.TypeCode V_3)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldnull
    IL_0003:  ceq
    IL_0005:  stloc.2
    IL_0006:  ldloc.2
    IL_0007:  brtrue     IL_00db

    IL_000c:  nop
    IL_000d:  ldarg.0
    IL_000e:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_0013:  stloc.0
    IL_0014:  ldloc.0
    IL_0015:  call       bool NHibernate.Linq.Util.LinqUtil::IsNullableType(class [mscorlib]System.Type)
    IL_001a:  ldc.i4.0
    IL_001b:  ceq
    IL_001d:  stloc.2
    IL_001e:  ldloc.2
    IL_001f:  brtrue.s   IL_0042

    IL_0021:  nop
    IL_0022:  ldloc.0
    IL_0023:  ldstr      "Value"
    IL_0028:  callvirt   instance class [mscorlib]System.Reflection.PropertyInfo [mscorlib]System.Type::GetProperty(string)
    IL_002d:  ldarg.0
    IL_002e:  ldnull
    IL_002f:  callvirt   instance object [mscorlib]System.Reflection.PropertyInfo::GetValue(object,
                                                                                            object[])
    IL_0034:  starg.s    'value'
    IL_0036:  ldarg.0
    IL_0037:  call       string NHibernate.Linq.Util.LinqUtil::SqlEncode(object)
    IL_003c:  stloc.1
    IL_003d:  br         IL_00e3

    IL_0042:  ldloc.0
    IL_0043:  call       valuetype [mscorlib]System.TypeCode [mscorlib]System.Type::GetTypeCode(class [mscorlib]System.Type)
    IL_0048:  stloc.3
    IL_0049:  ldloc.3
    IL_004a:  switch     ( 
                          IL_00b1,
                          IL_00b9,
                          IL_00b1,
                          IL_0091,
                          IL_00b9,
                          IL_00a8,
                          IL_00a8,
                          IL_00a8,
                          IL_00b9,
                          IL_00a8,
                          IL_00b9,
                          IL_00a8,
                          IL_00b9,
                          IL_00a8,
                          IL_00a8,
                          IL_00a8)
    IL_008f:  br.s       IL_00b9

    IL_0091:  ldarg.0
    IL_0092:  unbox.any  [mscorlib]System.Boolean
    IL_0097:  brtrue.s   IL_00a0

    IL_0099:  ldstr      "0"
    IL_009e:  br.s       IL_00a5

    IL_00a0:  ldstr      "1"
    IL_00a5:  stloc.1
    IL_00a6:  br.s       IL_00e3

    IL_00a8:  ldarg.0
    IL_00a9:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_00ae:  stloc.1
    IL_00af:  br.s       IL_00e3

    IL_00b1:  ldstr      "null"
    IL_00b6:  stloc.1
    IL_00b7:  br.s       IL_00e3

    IL_00b9:  ldstr      "'{0}'"
    IL_00be:  ldarg.0
    IL_00bf:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_00c4:  ldstr      "'"
    IL_00c9:  ldstr      "''"
    IL_00ce:  callvirt   instance string [mscorlib]System.String::Replace(string,
                                                                          string)
    IL_00d3:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_00d8:  stloc.1
    IL_00d9:  br.s       IL_00e3

    IL_00db:  ldstr      "null"
    IL_00e0:  stloc.1
    IL_00e1:  br.s       IL_00e3

    IL_00e3:  ldloc.1
    IL_00e4:  ret
  } // end of method LinqUtil::SqlEncode

  .method public hidebysig static class [System.Core]System.Linq.Expressions.Expression 
          StripQuotes(class [System.Core]System.Linq.Expressions.Expression e) cil managed
  {
    // Code size       36 (0x24)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  br.s       IL_0010

    IL_0003:  ldarg.0
    IL_0004:  castclass  [System.Core]System.Linq.Expressions.UnaryExpression
    IL_0009:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.UnaryExpression::get_Operand()
    IL_000e:  starg.s    e
    IL_0010:  ldarg.0
    IL_0011:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.ExpressionType [System.Core]System.Linq.Expressions.Expression::get_NodeType()
    IL_0016:  ldc.i4.s   40
    IL_0018:  ceq
    IL_001a:  stloc.1
    IL_001b:  ldloc.1
    IL_001c:  brtrue.s   IL_0003

    IL_001e:  ldarg.0
    IL_001f:  stloc.0
    IL_0020:  br.s       IL_0022

    IL_0022:  ldloc.0
    IL_0023:  ret
  } // end of method LinqUtil::StripQuotes

} // end of class NHibernate.Linq.Util.LinqUtil

.class public auto ansi beforefieldinit NHibernate.Linq.Util.QueryUtil
       extends [mscorlib]System.Object
{
  .method public hidebysig static object 
          GetExpressionValue(class [System.Core]System.Linq.Expressions.Expression expression) cil managed
  {
    // Code size       90 (0x5a)
    .maxstack  4
    .locals init (class [System.Core]System.Linq.Expressions.ConstantExpression V_0,
             object V_1,
             bool V_2,
             class [mscorlib]System.Type[] V_3)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  isinst     [System.Core]System.Linq.Expressions.ConstantExpression
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldnull
    IL_000a:  ceq
    IL_000c:  stloc.2
    IL_000d:  ldloc.2
    IL_000e:  brtrue.s   IL_0019

    IL_0010:  ldloc.0
    IL_0011:  callvirt   instance object [System.Core]System.Linq.Expressions.ConstantExpression::get_Value()
    IL_0016:  stloc.1
    IL_0017:  br.s       IL_0058

    IL_0019:  ldtoken    [System.Core]System.Func`1
    IL_001e:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0023:  ldc.i4.1
    IL_0024:  newarr     [mscorlib]System.Type
    IL_0029:  stloc.3
    IL_002a:  ldloc.3
    IL_002b:  ldc.i4.0
    IL_002c:  ldarg.0
    IL_002d:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_0032:  stelem.ref
    IL_0033:  ldloc.3
    IL_0034:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Type::MakeGenericType(class [mscorlib]System.Type[])
    IL_0039:  ldarg.0
    IL_003a:  ldc.i4.0
    IL_003b:  newarr     [System.Core]System.Linq.Expressions.ParameterExpression
    IL_0040:  call       class [System.Core]System.Linq.Expressions.LambdaExpression [System.Core]System.Linq.Expressions.Expression::Lambda(class [mscorlib]System.Type,
                                                                                                                                             class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                             class [System.Core]System.Linq.Expressions.ParameterExpression[])
    IL_0045:  callvirt   instance class [mscorlib]System.Delegate [System.Core]System.Linq.Expressions.LambdaExpression::Compile()
    IL_004a:  ldc.i4.0
    IL_004b:  newarr     [mscorlib]System.Object
    IL_0050:  callvirt   instance object [mscorlib]System.Delegate::DynamicInvoke(object[])
    IL_0055:  stloc.1
    IL_0056:  br.s       IL_0058

    IL_0058:  ldloc.1
    IL_0059:  ret
  } // end of method QueryUtil::GetExpressionValue

  .method public hidebysig static class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.ParameterExpression> 
          GetParameters(class [System.Core]System.Linq.Expressions.Expression expr) cil managed
  {
    // Code size       21 (0x15)
    .maxstack  2
    .locals init (class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.ParameterExpression> V_0,
             class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.ParameterExpression> V_1)
    IL_0000:  nop
    IL_0001:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.ParameterExpression>::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldloc.0
    IL_0009:  call       void NHibernate.Linq.Util.QueryUtil::GetParameters(class [System.Core]System.Linq.Expressions.Expression,
                                                                            class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.ParameterExpression>)
    IL_000e:  nop
    IL_000f:  ldloc.0
    IL_0010:  stloc.1
    IL_0011:  br.s       IL_0013

    IL_0013:  ldloc.1
    IL_0014:  ret
  } // end of method QueryUtil::GetParameters

  .method public hidebysig static object[] 
          GetMethodParameterValues(class [System.Core]System.Linq.Expressions.MethodCallExpression 'call') cil managed
  {
    // Code size       16 (0x10)
    .maxstack  2
    .locals init (class [mscorlib]System.Type[] V_0,
             object[] V_1)
    IL_0000:  nop
    IL_0001:  ldnull
    IL_0002:  stloc.0
    IL_0003:  ldarg.0
    IL_0004:  ldloca.s   V_0
    IL_0006:  call       object[] NHibernate.Linq.Util.QueryUtil::GetMethodParameterValues(class [System.Core]System.Linq.Expressions.MethodCallExpression,
                                                                                           class [mscorlib]System.Type[]&)
    IL_000b:  stloc.1
    IL_000c:  br.s       IL_000e

    IL_000e:  ldloc.1
    IL_000f:  ret
  } // end of method QueryUtil::GetMethodParameterValues

  .method public hidebysig static object[] 
          GetMethodParameterValues(class [System.Core]System.Linq.Expressions.MethodCallExpression 'call',
                                   [out] class [mscorlib]System.Type[]& types) cil managed
  {
    // Code size       167 (0xa7)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.ConstantExpression V_0,
             object[] V_1,
             class [mscorlib]System.Collections.Generic.List`1<object> V_2,
             class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Type> V_3,
             int32 V_4,
             object[] V_5,
             bool V_6)
    IL_0000:  nop
    IL_0001:  ldnull
    IL_0002:  stloc.1
    IL_0003:  ldarg.1
    IL_0004:  ldnull
    IL_0005:  stind.ref
    IL_0006:  ldarg.0
    IL_0007:  ldnull
    IL_0008:  ceq
    IL_000a:  stloc.s    V_6
    IL_000c:  ldloc.s    V_6
    IL_000e:  brtrue     IL_009f

    IL_0013:  nop
    IL_0014:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<object>::.ctor()
    IL_0019:  stloc.2
    IL_001a:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Type>::.ctor()
    IL_001f:  stloc.3
    IL_0020:  ldc.i4.0
    IL_0021:  stloc.s    V_4
    IL_0023:  br.s       IL_0066

    IL_0025:  nop
    IL_0026:  ldarg.0
    IL_0027:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_002c:  ldloc.s    V_4
    IL_002e:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_0033:  isinst     [System.Core]System.Linq.Expressions.ConstantExpression
    IL_0038:  stloc.0
    IL_0039:  ldloc.0
    IL_003a:  ldnull
    IL_003b:  ceq
    IL_003d:  stloc.s    V_6
    IL_003f:  ldloc.s    V_6
    IL_0041:  brtrue.s   IL_005f

    IL_0043:  nop
    IL_0044:  ldloc.2
    IL_0045:  ldloc.0
    IL_0046:  callvirt   instance object [System.Core]System.Linq.Expressions.ConstantExpression::get_Value()
    IL_004b:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<object>::Add(!0)
    IL_0050:  nop
    IL_0051:  ldloc.3
    IL_0052:  ldloc.0
    IL_0053:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_0058:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Type>::Add(!0)
    IL_005d:  nop
    IL_005e:  nop
    IL_005f:  nop
    IL_0060:  ldloc.s    V_4
    IL_0062:  ldc.i4.1
    IL_0063:  add
    IL_0064:  stloc.s    V_4
    IL_0066:  ldloc.s    V_4
    IL_0068:  ldarg.0
    IL_0069:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_006e:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Count()
    IL_0073:  clt
    IL_0075:  stloc.s    V_6
    IL_0077:  ldloc.s    V_6
    IL_0079:  brtrue.s   IL_0025

    IL_007b:  ldloc.2
    IL_007c:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<object>::get_Count()
    IL_0081:  ldc.i4.0
    IL_0082:  cgt
    IL_0084:  ldc.i4.0
    IL_0085:  ceq
    IL_0087:  stloc.s    V_6
    IL_0089:  ldloc.s    V_6
    IL_008b:  brtrue.s   IL_009e

    IL_008d:  nop
    IL_008e:  ldloc.2
    IL_008f:  callvirt   instance !0[] class [mscorlib]System.Collections.Generic.List`1<object>::ToArray()
    IL_0094:  stloc.1
    IL_0095:  ldarg.1
    IL_0096:  ldloc.3
    IL_0097:  callvirt   instance !0[] class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Type>::ToArray()
    IL_009c:  stind.ref
    IL_009d:  nop
    IL_009e:  nop
    IL_009f:  ldloc.1
    IL_00a0:  stloc.s    V_5
    IL_00a2:  br.s       IL_00a4

    IL_00a4:  ldloc.s    V_5
    IL_00a6:  ret
  } // end of method QueryUtil::GetMethodParameterValues

  .method public hidebysig static class NHibernate.Linq.Expressions.SqlFunctionExpression 
          GetFunctionCriteria(class [System.Core]System.Linq.Expressions.MethodCallExpression 'call',
                              class [NHibernate]NHibernate.Criterion.ICriterion criterion,
                              class NHibernate.Linq.Expressions.SqlFunctionExpression rightFunction) cil managed
  {
    // Code size       52 (0x34)
    .maxstack  8
    .locals init (class [mscorlib]System.Type[] V_0,
             object[] V_1,
             int32 V_2,
             string V_3,
             class NHibernate.Linq.Expressions.SqlFunctionExpression V_4)
    IL_0000:  nop
    IL_0001:  ldnull
    IL_0002:  stloc.0
    IL_0003:  ldarg.0
    IL_0004:  ldloca.s   V_0
    IL_0006:  call       object[] NHibernate.Linq.Util.QueryUtil::GetMethodParameterValues(class [System.Core]System.Linq.Expressions.MethodCallExpression,
                                                                                           class [mscorlib]System.Type[]&)
    IL_000b:  stloc.1
    IL_000c:  ldc.i4.0
    IL_000d:  stloc.2
    IL_000e:  ldarg.0
    IL_000f:  ldloca.s   V_2
    IL_0011:  call       string NHibernate.Linq.Util.QueryUtil::GetMethodName(class [System.Core]System.Linq.Expressions.MethodCallExpression,
                                                                              int32&)
    IL_0016:  stloc.3
    IL_0017:  ldloc.3
    IL_0018:  ldarg.0
    IL_0019:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [System.Core]System.Linq.Expressions.MethodCallExpression::get_Method()
    IL_001e:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Reflection.MethodInfo::get_ReturnType()
    IL_0023:  ldloc.1
    IL_0024:  ldloc.0
    IL_0025:  ldarg.1
    IL_0026:  ldloc.2
    IL_0027:  ldarg.2
    IL_0028:  newobj     instance void NHibernate.Linq.Expressions.SqlFunctionExpression::.ctor(string,
                                                                                                class [mscorlib]System.Type,
                                                                                                object[],
                                                                                                class [mscorlib]System.Type[],
                                                                                                class [NHibernate]NHibernate.Criterion.ICriterion,
                                                                                                int32,
                                                                                                class NHibernate.Linq.Expressions.SqlFunctionExpression)
    IL_002d:  stloc.s    V_4
    IL_002f:  br.s       IL_0031

    IL_0031:  ldloc.s    V_4
    IL_0033:  ret
  } // end of method QueryUtil::GetFunctionCriteria

  .method public hidebysig static void  GetParameters(class [System.Core]System.Linq.Expressions.Expression expr,
                                                      class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.ParameterExpression> list) cil managed
  {
    // Code size       177 (0xb1)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.ParameterExpression V_0,
             class [System.Core]System.Linq.Expressions.BinaryExpression V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  isinst     [System.Core]System.Linq.Expressions.ParameterExpression
    IL_0007:  ldnull
    IL_0008:  cgt.un
    IL_000a:  ldc.i4.0
    IL_000b:  ceq
    IL_000d:  stloc.2
    IL_000e:  ldloc.2
    IL_000f:  brtrue.s   IL_0031

    IL_0011:  nop
    IL_0012:  ldarg.0
    IL_0013:  isinst     [System.Core]System.Linq.Expressions.ParameterExpression
    IL_0018:  stloc.0
    IL_0019:  ldarg.1
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.ParameterExpression>::Contains(!0)
    IL_0020:  stloc.2
    IL_0021:  ldloc.2
    IL_0022:  brtrue.s   IL_002e

    IL_0024:  nop
    IL_0025:  ldarg.1
    IL_0026:  ldloc.0
    IL_0027:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.ParameterExpression>::Add(!0)
    IL_002c:  nop
    IL_002d:  nop
    IL_002e:  nop
    IL_002f:  br.s       IL_00b0

    IL_0031:  ldarg.0
    IL_0032:  isinst     [System.Core]System.Linq.Expressions.MemberExpression
    IL_0037:  ldnull
    IL_0038:  cgt.un
    IL_003a:  ldc.i4.0
    IL_003b:  ceq
    IL_003d:  stloc.2
    IL_003e:  ldloc.2
    IL_003f:  brtrue.s   IL_0057

    IL_0041:  nop
    IL_0042:  ldarg.0
    IL_0043:  castclass  [System.Core]System.Linq.Expressions.MemberExpression
    IL_0048:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.MemberExpression::get_Expression()
    IL_004d:  ldarg.1
    IL_004e:  call       void NHibernate.Linq.Util.QueryUtil::GetParameters(class [System.Core]System.Linq.Expressions.Expression,
                                                                            class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.ParameterExpression>)
    IL_0053:  nop
    IL_0054:  nop
    IL_0055:  br.s       IL_00b0

    IL_0057:  ldarg.0
    IL_0058:  isinst     [System.Core]System.Linq.Expressions.UnaryExpression
    IL_005d:  ldnull
    IL_005e:  cgt.un
    IL_0060:  ldc.i4.0
    IL_0061:  ceq
    IL_0063:  stloc.2
    IL_0064:  ldloc.2
    IL_0065:  brtrue.s   IL_007d

    IL_0067:  nop
    IL_0068:  ldarg.0
    IL_0069:  castclass  [System.Core]System.Linq.Expressions.UnaryExpression
    IL_006e:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.UnaryExpression::get_Operand()
    IL_0073:  ldarg.1
    IL_0074:  call       void NHibernate.Linq.Util.QueryUtil::GetParameters(class [System.Core]System.Linq.Expressions.Expression,
                                                                            class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.ParameterExpression>)
    IL_0079:  nop
    IL_007a:  nop
    IL_007b:  br.s       IL_00b0

    IL_007d:  ldarg.0
    IL_007e:  isinst     [System.Core]System.Linq.Expressions.BinaryExpression
    IL_0083:  ldnull
    IL_0084:  cgt.un
    IL_0086:  ldc.i4.0
    IL_0087:  ceq
    IL_0089:  stloc.2
    IL_008a:  ldloc.2
    IL_008b:  brtrue.s   IL_00b0

    IL_008d:  nop
    IL_008e:  ldarg.0
    IL_008f:  isinst     [System.Core]System.Linq.Expressions.BinaryExpression
    IL_0094:  stloc.1
    IL_0095:  ldloc.1
    IL_0096:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.BinaryExpression::get_Left()
    IL_009b:  ldarg.1
    IL_009c:  call       void NHibernate.Linq.Util.QueryUtil::GetParameters(class [System.Core]System.Linq.Expressions.Expression,
                                                                            class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.ParameterExpression>)
    IL_00a1:  nop
    IL_00a2:  ldloc.1
    IL_00a3:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.BinaryExpression::get_Right()
    IL_00a8:  ldarg.1
    IL_00a9:  call       void NHibernate.Linq.Util.QueryUtil::GetParameters(class [System.Core]System.Linq.Expressions.Expression,
                                                                            class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.ParameterExpression>)
    IL_00ae:  nop
    IL_00af:  nop
    IL_00b0:  ret
  } // end of method QueryUtil::GetParameters

  .method public hidebysig static string 
          GetMethodName(class [System.Core]System.Linq.Expressions.MethodCallExpression 'call',
                        [out] int32& propertyPosition) cil managed
  {
    // Code size       213 (0xd5)
    .maxstack  3
    .locals init (object[] V_0,
             class NHibernate.Linq.Expressions.SqlFunctionAttribute V_1,
             string V_2,
             string V_3,
             bool V_4,
             string V_5)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [System.Core]System.Linq.Expressions.MethodCallExpression::get_Method()
    IL_0007:  ldtoken    NHibernate.Linq.Expressions.SqlFunctionAttribute
    IL_000c:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0011:  ldc.i4.0
    IL_0012:  callvirt   instance object[] [mscorlib]System.Reflection.MemberInfo::GetCustomAttributes(class [mscorlib]System.Type,
                                                                                                       bool)
    IL_0017:  stloc.0
    IL_0018:  ldloc.0
    IL_0019:  call       !!0 [System.Core]System.Linq.Enumerable::FirstOrDefault<object>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_001e:  isinst     NHibernate.Linq.Expressions.SqlFunctionAttribute
    IL_0023:  stloc.1
    IL_0024:  ldarg.0
    IL_0025:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [System.Core]System.Linq.Expressions.MethodCallExpression::get_Method()
    IL_002a:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_002f:  stloc.2
    IL_0030:  ldarg.1
    IL_0031:  ldc.i4.0
    IL_0032:  stind.i4
    IL_0033:  ldloc.1
    IL_0034:  ldnull
    IL_0035:  ceq
    IL_0037:  stloc.s    V_4
    IL_0039:  ldloc.s    V_4
    IL_003b:  brtrue.s   IL_006c

    IL_003d:  nop
    IL_003e:  ldloc.1
    IL_003f:  callvirt   instance string NHibernate.Linq.Expressions.SqlFunctionAttribute::get_Owner()
    IL_0044:  call       bool [mscorlib]System.String::IsNullOrEmpty(string)
    IL_0049:  stloc.s    V_4
    IL_004b:  ldloc.s    V_4
    IL_004d:  brtrue.s   IL_0061

    IL_004f:  ldstr      "{0}.{1}"
    IL_0054:  ldloc.1
    IL_0055:  callvirt   instance string NHibernate.Linq.Expressions.SqlFunctionAttribute::get_Owner()
    IL_005a:  ldloc.2
    IL_005b:  call       string [mscorlib]System.String::Format(string,
                                                                object,
                                                                object)
    IL_0060:  stloc.2
    IL_0061:  ldarg.1
    IL_0062:  ldloc.1
    IL_0063:  callvirt   instance int32 NHibernate.Linq.Expressions.SqlFunctionAttribute::get_PropertyPosition()
    IL_0068:  stind.i4
    IL_0069:  nop
    IL_006a:  br.s       IL_00cf

    IL_006c:  nop
    IL_006d:  ldloc.2
    IL_006e:  callvirt   instance string [mscorlib]System.String::ToLower()
    IL_0073:  stloc.s    V_5
    IL_0075:  ldloc.s    V_5
    IL_0077:  brfalse.s  IL_00ce

    IL_0079:  ldloc.s    V_5
    IL_007b:  ldstr      "tolower"
    IL_0080:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_0085:  brtrue.s   IL_00b3

    IL_0087:  ldloc.s    V_5
    IL_0089:  ldstr      "toupper"
    IL_008e:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_0093:  brtrue.s   IL_00bb

    IL_0095:  ldloc.s    V_5
    IL_0097:  ldstr      "indexof"
    IL_009c:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_00a1:  brtrue.s   IL_00c3

    IL_00a3:  ldloc.s    V_5
    IL_00a5:  ldstr      "charindex"
    IL_00aa:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_00af:  brtrue.s   IL_00c3

    IL_00b1:  br.s       IL_00ce

    IL_00b3:  ldstr      "lower"
    IL_00b8:  stloc.2
    IL_00b9:  br.s       IL_00ce

    IL_00bb:  ldstr      "upper"
    IL_00c0:  stloc.2
    IL_00c1:  br.s       IL_00ce

    IL_00c3:  ldstr      "charindex"
    IL_00c8:  stloc.2
    IL_00c9:  ldarg.1
    IL_00ca:  ldc.i4.1
    IL_00cb:  stind.i4
    IL_00cc:  br.s       IL_00ce

    IL_00ce:  nop
    IL_00cf:  ldloc.2
    IL_00d0:  stloc.3
    IL_00d1:  br.s       IL_00d3

    IL_00d3:  ldloc.3
    IL_00d4:  ret
  } // end of method QueryUtil::GetMethodName

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method QueryUtil::.ctor

} // end of class NHibernate.Linq.Util.QueryUtil

.class public abstract auto ansi sealed beforefieldinit NHibernate.Linq.Util.SessionFactoryUtil
       extends [mscorlib]System.Object
{
  .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig static class [mscorlib]System.Collections.Generic.IDictionary`2<class [mscorlib]System.Type,string> 
          GetProxyMetaData(class [NHibernate]NHibernate.Engine.ISessionFactoryImplementor factory,
                           class [mscorlib]System.Collections.Generic.IDictionary`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata> metaData) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       162 (0xa2)
    .maxstack  3
    .locals init (class [mscorlib]System.Collections.Generic.Dictionary`2<class [mscorlib]System.Type,string> V_0,
             valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata> V_1,
             class [mscorlib]System.Type V_2,
             class [mscorlib]System.Collections.Generic.IDictionary`2<class [mscorlib]System.Type,string> V_3,
             class [mscorlib]System.Collections.Generic.IEnumerator`1<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata>> V_4,
             bool V_5)
    IL_0000:  nop
    IL_0001:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<class [mscorlib]System.Type,string>::.ctor()
    IL_0006:  stloc.0
    IL_0007:  nop
    IL_0008:  ldarg.1
    IL_0009:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.Generic.IEnumerable`1<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata>>::GetEnumerator()
    IL_000e:  stloc.s    V_4
    .try
    {
      IL_0010:  br.s       IL_0078

      IL_0012:  ldloc.s    V_4
      IL_0014:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata>>::get_Current()
      IL_0019:  stloc.1
      IL_001a:  nop
      IL_001b:  ldloca.s   V_1
      IL_001d:  call       instance !1 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata>::get_Value()
      IL_0022:  callvirt   instance bool [NHibernate]NHibernate.Metadata.IClassMetadata::get_HasProxy()
      IL_0027:  ldc.i4.0
      IL_0028:  ceq
      IL_002a:  stloc.s    V_5
      IL_002c:  ldloc.s    V_5
      IL_002e:  brtrue.s   IL_0077

      IL_0030:  nop
      IL_0031:  ldarg.0
      IL_0032:  ldloca.s   V_1
      IL_0034:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata>::get_Key()
      IL_0039:  callvirt   instance class [NHibernate]NHibernate.Persister.Entity.IEntityPersister [NHibernate]NHibernate.Engine.ISessionFactoryImplementor::GetEntityPersister(string)
      IL_003e:  ldc.i4.0
      IL_003f:  callvirt   instance class [mscorlib]System.Type [NHibernate]NHibernate.Persister.Entity.IEntityPersister::GetConcreteProxyClass(valuetype [NHibernate]NHibernate.EntityMode)
      IL_0044:  stloc.2
      IL_0045:  ldloc.2
      IL_0046:  ldloca.s   V_1
      IL_0048:  call       instance !1 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata>::get_Value()
      IL_004d:  ldc.i4.0
      IL_004e:  callvirt   instance class [mscorlib]System.Type [NHibernate]NHibernate.Metadata.IClassMetadata::GetMappedClass(valuetype [NHibernate]NHibernate.EntityMode)
      IL_0053:  beq.s      IL_005e

      IL_0055:  ldloc.0
      IL_0056:  ldloc.2
      IL_0057:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<class [mscorlib]System.Type,string>::ContainsKey(!0)
      IL_005c:  br.s       IL_005f

      IL_005e:  ldc.i4.1
      IL_005f:  stloc.s    V_5
      IL_0061:  ldloc.s    V_5
      IL_0063:  brtrue.s   IL_0076

      IL_0065:  nop
      IL_0066:  ldloc.0
      IL_0067:  ldloc.2
      IL_0068:  ldloca.s   V_1
      IL_006a:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata>::get_Key()
      IL_006f:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<class [mscorlib]System.Type,string>::Add(!0,
                                                                                                                                          !1)
      IL_0074:  nop
      IL_0075:  nop
      IL_0076:  nop
      IL_0077:  nop
      IL_0078:  ldloc.s    V_4
      IL_007a:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_007f:  stloc.s    V_5
      IL_0081:  ldloc.s    V_5
      IL_0083:  brtrue.s   IL_0012

      IL_0085:  leave.s    IL_009b

    }  // end .try
    finally
    {
      IL_0087:  ldloc.s    V_4
      IL_0089:  ldnull
      IL_008a:  ceq
      IL_008c:  stloc.s    V_5
      IL_008e:  ldloc.s    V_5
      IL_0090:  brtrue.s   IL_009a

      IL_0092:  ldloc.s    V_4
      IL_0094:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0099:  nop
      IL_009a:  endfinally
    }  // end handler
    IL_009b:  nop
    IL_009c:  ldloc.0
    IL_009d:  stloc.3
    IL_009e:  br.s       IL_00a0

    IL_00a0:  ldloc.3
    IL_00a1:  ret
  } // end of method SessionFactoryUtil::GetProxyMetaData

  .method public hidebysig static class [mscorlib]System.Collections.Generic.IDictionary`2<string,class [mscorlib]System.Type> 
          GetEntityNameMetaData(class [NHibernate]NHibernate.Engine.ISessionFactoryImplementor factory) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       203 (0xcb)
    .maxstack  3
    .locals init (class [mscorlib]System.Collections.Generic.IDictionary`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata> V_0,
             class [mscorlib]System.Collections.Generic.Dictionary`2<string,class [mscorlib]System.Type> V_1,
             valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata> V_2,
             class [mscorlib]System.Type V_3,
             class [mscorlib]System.Type V_4,
             class [mscorlib]System.Collections.Generic.IDictionary`2<string,class [mscorlib]System.Type> V_5,
             class [mscorlib]System.Collections.Generic.IEnumerator`1<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata>> V_6,
             bool V_7)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  callvirt   instance class [mscorlib]System.Collections.Generic.IDictionary`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata> [NHibernate]NHibernate.ISessionFactory::GetAllClassMetadata()
    IL_0007:  stloc.0
    IL_0008:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,class [mscorlib]System.Type>::.ctor()
    IL_000d:  stloc.1
    IL_000e:  nop
    IL_000f:  ldloc.0
    IL_0010:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.Generic.IEnumerable`1<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata>>::GetEnumerator()
    IL_0015:  stloc.s    V_6
    .try
    {
      IL_0017:  br         IL_009c

      IL_001c:  ldloc.s    V_6
      IL_001e:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata>>::get_Current()
      IL_0023:  stloc.2
      IL_0024:  nop
      IL_0025:  ldloca.s   V_2
      IL_0027:  call       instance !1 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata>::get_Value()
      IL_002c:  ldc.i4.0
      IL_002d:  callvirt   instance class [mscorlib]System.Type [NHibernate]NHibernate.Metadata.IClassMetadata::GetMappedClass(valuetype [NHibernate]NHibernate.EntityMode)
      IL_0032:  stloc.3
      IL_0033:  ldloc.1
      IL_0034:  ldloca.s   V_2
      IL_0036:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata>::get_Key()
      IL_003b:  ldloc.3
      IL_003c:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,class [mscorlib]System.Type>::Add(!0,
                                                                                                                                          !1)
      IL_0041:  nop
      IL_0042:  ldloca.s   V_2
      IL_0044:  call       instance !1 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata>::get_Value()
      IL_0049:  callvirt   instance bool [NHibernate]NHibernate.Metadata.IClassMetadata::get_HasProxy()
      IL_004e:  ldc.i4.0
      IL_004f:  ceq
      IL_0051:  stloc.s    V_7
      IL_0053:  ldloc.s    V_7
      IL_0055:  brtrue.s   IL_009b

      IL_0057:  nop
      IL_0058:  ldarg.0
      IL_0059:  ldloca.s   V_2
      IL_005b:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata>::get_Key()
      IL_0060:  callvirt   instance class [NHibernate]NHibernate.Persister.Entity.IEntityPersister [NHibernate]NHibernate.Engine.ISessionFactoryImplementor::GetEntityPersister(string)
      IL_0065:  ldc.i4.0
      IL_0066:  callvirt   instance class [mscorlib]System.Type [NHibernate]NHibernate.Persister.Entity.IEntityPersister::GetConcreteProxyClass(valuetype [NHibernate]NHibernate.EntityMode)
      IL_006b:  stloc.s    V_4
      IL_006d:  ldloc.s    V_4
      IL_006f:  ldloc.3
      IL_0070:  beq.s      IL_0081

      IL_0072:  ldloc.1
      IL_0073:  ldloc.s    V_4
      IL_0075:  callvirt   instance string [mscorlib]System.Type::get_FullName()
      IL_007a:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<string,class [mscorlib]System.Type>::ContainsKey(!0)
      IL_007f:  br.s       IL_0082

      IL_0081:  ldc.i4.1
      IL_0082:  stloc.s    V_7
      IL_0084:  ldloc.s    V_7
      IL_0086:  brtrue.s   IL_009a

      IL_0088:  nop
      IL_0089:  ldloc.1
      IL_008a:  ldloc.s    V_4
      IL_008c:  callvirt   instance string [mscorlib]System.Type::get_FullName()
      IL_0091:  ldloc.s    V_4
      IL_0093:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,class [mscorlib]System.Type>::Add(!0,
                                                                                                                                          !1)
      IL_0098:  nop
      IL_0099:  nop
      IL_009a:  nop
      IL_009b:  nop
      IL_009c:  ldloc.s    V_6
      IL_009e:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_00a3:  stloc.s    V_7
      IL_00a5:  ldloc.s    V_7
      IL_00a7:  brtrue     IL_001c

      IL_00ac:  leave.s    IL_00c2

    }  // end .try
    finally
    {
      IL_00ae:  ldloc.s    V_6
      IL_00b0:  ldnull
      IL_00b1:  ceq
      IL_00b3:  stloc.s    V_7
      IL_00b5:  ldloc.s    V_7
      IL_00b7:  brtrue.s   IL_00c1

      IL_00b9:  ldloc.s    V_6
      IL_00bb:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_00c0:  nop
      IL_00c1:  endfinally
    }  // end handler
    IL_00c2:  nop
    IL_00c3:  ldloc.1
    IL_00c4:  stloc.s    V_5
    IL_00c6:  br.s       IL_00c8

    IL_00c8:  ldloc.s    V_5
    IL_00ca:  ret
  } // end of method SessionFactoryUtil::GetEntityNameMetaData

} // end of class NHibernate.Linq.Util.SessionFactoryUtil

.class public abstract auto ansi sealed beforefieldinit NHibernate.Linq.Util.TypeSystem
       extends [mscorlib]System.Object
{
  .method public hidebysig static class [mscorlib]System.Type 
          GetElementType(class [mscorlib]System.Type seqType) cil managed
  {
    // Code size       36 (0x24)
    .maxstack  2
    .locals init (class [mscorlib]System.Type V_0,
             class [mscorlib]System.Type V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       class [mscorlib]System.Type NHibernate.Linq.Util.TypeSystem::FindIEnumerable(class [mscorlib]System.Type)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldnull
    IL_000a:  ceq
    IL_000c:  ldc.i4.0
    IL_000d:  ceq
    IL_000f:  stloc.2
    IL_0010:  ldloc.2
    IL_0011:  brtrue.s   IL_0017

    IL_0013:  ldarg.0
    IL_0014:  stloc.1
    IL_0015:  br.s       IL_0022

    IL_0017:  ldloc.0
    IL_0018:  callvirt   instance class [mscorlib]System.Type[] [mscorlib]System.Type::GetGenericArguments()
    IL_001d:  ldc.i4.0
    IL_001e:  ldelem.ref
    IL_001f:  stloc.1
    IL_0020:  br.s       IL_0022

    IL_0022:  ldloc.1
    IL_0023:  ret
  } // end of method TypeSystem::GetElementType

  .method private hidebysig static class [mscorlib]System.Type 
          FindIEnumerable(class [mscorlib]System.Type seqType) cil managed
  {
    // Code size       358 (0x166)
    .maxstack  4
    .locals init (class [mscorlib]System.Type V_0,
             class [mscorlib]System.Type V_1,
             class [mscorlib]System.Type[] V_2,
             class [mscorlib]System.Type V_3,
             class [mscorlib]System.Type V_4,
             bool V_5,
             class [mscorlib]System.Type[] V_6,
             class [mscorlib]System.Type[] V_7,
             int32 V_8)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  brfalse.s  IL_0016

    IL_0004:  ldarg.0
    IL_0005:  ldtoken    [mscorlib]System.String
    IL_000a:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_000f:  ceq
    IL_0011:  ldc.i4.0
    IL_0012:  ceq
    IL_0014:  br.s       IL_0017

    IL_0016:  ldc.i4.0
    IL_0017:  stloc.s    V_5
    IL_0019:  ldloc.s    V_5
    IL_001b:  brtrue.s   IL_0025

    IL_001d:  ldnull
    IL_001e:  stloc.s    V_4
    IL_0020:  br         IL_0162

    IL_0025:  ldarg.0
    IL_0026:  callvirt   instance bool [mscorlib]System.Type::get_IsArray()
    IL_002b:  ldc.i4.0
    IL_002c:  ceq
    IL_002e:  stloc.s    V_5
    IL_0030:  ldloc.s    V_5
    IL_0032:  brtrue.s   IL_005e

    IL_0034:  ldtoken    [mscorlib]System.Collections.Generic.IEnumerable`1
    IL_0039:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_003e:  ldc.i4.1
    IL_003f:  newarr     [mscorlib]System.Type
    IL_0044:  stloc.s    V_6
    IL_0046:  ldloc.s    V_6
    IL_0048:  ldc.i4.0
    IL_0049:  ldarg.0
    IL_004a:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Type::GetElementType()
    IL_004f:  stelem.ref
    IL_0050:  ldloc.s    V_6
    IL_0052:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Type::MakeGenericType(class [mscorlib]System.Type[])
    IL_0057:  stloc.s    V_4
    IL_0059:  br         IL_0162

    IL_005e:  ldarg.0
    IL_005f:  callvirt   instance bool [mscorlib]System.Type::get_IsGenericType()
    IL_0064:  ldc.i4.0
    IL_0065:  ceq
    IL_0067:  stloc.s    V_5
    IL_0069:  ldloc.s    V_5
    IL_006b:  brtrue.s   IL_00d1

    IL_006d:  nop
    IL_006e:  nop
    IL_006f:  ldarg.0
    IL_0070:  callvirt   instance class [mscorlib]System.Type[] [mscorlib]System.Type::GetGenericArguments()
    IL_0075:  stloc.s    V_7
    IL_0077:  ldc.i4.0
    IL_0078:  stloc.s    V_8
    IL_007a:  br.s       IL_00c2

    IL_007c:  ldloc.s    V_7
    IL_007e:  ldloc.s    V_8
    IL_0080:  ldelem.ref
    IL_0081:  stloc.0
    IL_0082:  nop
    IL_0083:  ldtoken    [mscorlib]System.Collections.Generic.IEnumerable`1
    IL_0088:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_008d:  ldc.i4.1
    IL_008e:  newarr     [mscorlib]System.Type
    IL_0093:  stloc.s    V_6
    IL_0095:  ldloc.s    V_6
    IL_0097:  ldc.i4.0
    IL_0098:  ldloc.0
    IL_0099:  stelem.ref
    IL_009a:  ldloc.s    V_6
    IL_009c:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Type::MakeGenericType(class [mscorlib]System.Type[])
    IL_00a1:  stloc.1
    IL_00a2:  ldloc.1
    IL_00a3:  ldarg.0
    IL_00a4:  callvirt   instance bool [mscorlib]System.Type::IsAssignableFrom(class [mscorlib]System.Type)
    IL_00a9:  ldc.i4.0
    IL_00aa:  ceq
    IL_00ac:  stloc.s    V_5
    IL_00ae:  ldloc.s    V_5
    IL_00b0:  brtrue.s   IL_00bb

    IL_00b2:  nop
    IL_00b3:  ldloc.1
    IL_00b4:  stloc.s    V_4
    IL_00b6:  leave      IL_0162

    IL_00bb:  nop
    IL_00bc:  ldloc.s    V_8
    IL_00be:  ldc.i4.1
    IL_00bf:  add
    IL_00c0:  stloc.s    V_8
    IL_00c2:  ldloc.s    V_8
    IL_00c4:  ldloc.s    V_7
    IL_00c6:  ldlen
    IL_00c7:  conv.i4
    IL_00c8:  clt
    IL_00ca:  stloc.s    V_5
    IL_00cc:  ldloc.s    V_5
    IL_00ce:  brtrue.s   IL_007c

    IL_00d0:  nop
    IL_00d1:  ldarg.0
    IL_00d2:  callvirt   instance class [mscorlib]System.Type[] [mscorlib]System.Type::GetInterfaces()
    IL_00d7:  stloc.2
    IL_00d8:  ldloc.2
    IL_00d9:  brfalse.s  IL_00e6

    IL_00db:  ldloc.2
    IL_00dc:  ldlen
    IL_00dd:  conv.i4
    IL_00de:  ldc.i4.0
    IL_00df:  cgt
    IL_00e1:  ldc.i4.0
    IL_00e2:  ceq
    IL_00e4:  br.s       IL_00e7

    IL_00e6:  ldc.i4.1
    IL_00e7:  stloc.s    V_5
    IL_00e9:  ldloc.s    V_5
    IL_00eb:  brtrue.s   IL_012a

    IL_00ed:  nop
    IL_00ee:  nop
    IL_00ef:  ldloc.2
    IL_00f0:  stloc.s    V_7
    IL_00f2:  ldc.i4.0
    IL_00f3:  stloc.s    V_8
    IL_00f5:  br.s       IL_011b

    IL_00f7:  ldloc.s    V_7
    IL_00f9:  ldloc.s    V_8
    IL_00fb:  ldelem.ref
    IL_00fc:  stloc.3
    IL_00fd:  nop
    IL_00fe:  ldloc.3
    IL_00ff:  call       class [mscorlib]System.Type NHibernate.Linq.Util.TypeSystem::FindIEnumerable(class [mscorlib]System.Type)
    IL_0104:  stloc.1
    IL_0105:  ldloc.1
    IL_0106:  ldnull
    IL_0107:  ceq
    IL_0109:  stloc.s    V_5
    IL_010b:  ldloc.s    V_5
    IL_010d:  brtrue.s   IL_0114

    IL_010f:  ldloc.1
    IL_0110:  stloc.s    V_4
    IL_0112:  leave.s    IL_0162

    IL_0114:  nop
    IL_0115:  ldloc.s    V_8
    IL_0117:  ldc.i4.1
    IL_0118:  add
    IL_0119:  stloc.s    V_8
    IL_011b:  ldloc.s    V_8
    IL_011d:  ldloc.s    V_7
    IL_011f:  ldlen
    IL_0120:  conv.i4
    IL_0121:  clt
    IL_0123:  stloc.s    V_5
    IL_0125:  ldloc.s    V_5
    IL_0127:  brtrue.s   IL_00f7

    IL_0129:  nop
    IL_012a:  ldarg.0
    IL_012b:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Type::get_BaseType()
    IL_0130:  brfalse.s  IL_0146

    IL_0132:  ldarg.0
    IL_0133:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Type::get_BaseType()
    IL_0138:  ldtoken    [mscorlib]System.Object
    IL_013d:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0142:  ceq
    IL_0144:  br.s       IL_0147

    IL_0146:  ldc.i4.1
    IL_0147:  stloc.s    V_5
    IL_0149:  ldloc.s    V_5
    IL_014b:  brtrue.s   IL_015d

    IL_014d:  nop
    IL_014e:  ldarg.0
    IL_014f:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Type::get_BaseType()
    IL_0154:  call       class [mscorlib]System.Type NHibernate.Linq.Util.TypeSystem::FindIEnumerable(class [mscorlib]System.Type)
    IL_0159:  stloc.s    V_4
    IL_015b:  br.s       IL_0162

    IL_015d:  ldnull
    IL_015e:  stloc.s    V_4
    IL_0160:  br.s       IL_0162

    IL_0162:  nop
    IL_0163:  ldloc.s    V_4
    IL_0165:  ret
  } // end of method TypeSystem::FindIEnumerable

} // end of class NHibernate.Linq.Util.TypeSystem

.class public abstract auto ansi beforefieldinit NHibernate.Linq.Visitors.ExpressionVisitor
       extends [mscorlib]System.Object
{
  .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig newslot virtual 
          instance class [System.Core]System.Linq.Expressions.Expression 
          Visit(class [System.Core]System.Linq.Expressions.Expression exp) cil managed
  {
    // Code size       481 (0x1e1)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             bool V_1,
             valuetype [System.Core]System.Linq.Expressions.ExpressionType V_2)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  ldnull
    IL_0003:  ceq
    IL_0005:  ldc.i4.0
    IL_0006:  ceq
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  brtrue.s   IL_0013

    IL_000c:  ldarg.1
    IL_000d:  stloc.0
    IL_000e:  br         IL_01df

    IL_0013:  ldarg.1
    IL_0014:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.ExpressionType [System.Core]System.Linq.Expressions.Expression::get_NodeType()
    IL_0019:  stloc.2
    IL_001a:  ldloc.2
    IL_001b:  switch     ( 
                          IL_00ef,
                          IL_00ef,
                          IL_00ef,
                          IL_00ef,
                          IL_00dd,
                          IL_00ef,
                          IL_015b,
                          IL_00ef,
                          IL_0113,
                          IL_0125,
                          IL_00dd,
                          IL_00dd,
                          IL_00ef,
                          IL_00ef,
                          IL_00ef,
                          IL_00ef,
                          IL_00ef,
                          IL_0197,
                          IL_016a,
                          IL_00ef,
                          IL_00ef,
                          IL_00ef,
                          IL_01b5,
                          IL_0149,
                          IL_01a6,
                          IL_00ef,
                          IL_00ef,
                          IL_00ef,
                          IL_00dd,
                          IL_01c4,
                          IL_00dd,
                          IL_0179,
                          IL_0188,
                          IL_0188,
                          IL_00dd,
                          IL_00ef,
                          IL_00ef,
                          IL_00ef,
                          IL_0137,
                          IL_01c4,
                          IL_00dd,
                          IL_00ef,
                          IL_00ef,
                          IL_00ef,
                          IL_00dd,
                          IL_0101)
    IL_00d8:  br         IL_01c4

    IL_00dd:  ldarg.0
    IL_00de:  ldarg.1
    IL_00df:  castclass  [System.Core]System.Linq.Expressions.UnaryExpression
    IL_00e4:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::VisitUnary(class [System.Core]System.Linq.Expressions.UnaryExpression)
    IL_00e9:  stloc.0
    IL_00ea:  br         IL_01df

    IL_00ef:  ldarg.0
    IL_00f0:  ldarg.1
    IL_00f1:  castclass  [System.Core]System.Linq.Expressions.BinaryExpression
    IL_00f6:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::VisitBinary(class [System.Core]System.Linq.Expressions.BinaryExpression)
    IL_00fb:  stloc.0
    IL_00fc:  br         IL_01df

    IL_0101:  ldarg.0
    IL_0102:  ldarg.1
    IL_0103:  castclass  [System.Core]System.Linq.Expressions.TypeBinaryExpression
    IL_0108:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::VisitTypeIs(class [System.Core]System.Linq.Expressions.TypeBinaryExpression)
    IL_010d:  stloc.0
    IL_010e:  br         IL_01df

    IL_0113:  ldarg.0
    IL_0114:  ldarg.1
    IL_0115:  castclass  [System.Core]System.Linq.Expressions.ConditionalExpression
    IL_011a:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::VisitConditional(class [System.Core]System.Linq.Expressions.ConditionalExpression)
    IL_011f:  stloc.0
    IL_0120:  br         IL_01df

    IL_0125:  ldarg.0
    IL_0126:  ldarg.1
    IL_0127:  castclass  [System.Core]System.Linq.Expressions.ConstantExpression
    IL_012c:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::VisitConstant(class [System.Core]System.Linq.Expressions.ConstantExpression)
    IL_0131:  stloc.0
    IL_0132:  br         IL_01df

    IL_0137:  ldarg.0
    IL_0138:  ldarg.1
    IL_0139:  castclass  [System.Core]System.Linq.Expressions.ParameterExpression
    IL_013e:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::VisitParameter(class [System.Core]System.Linq.Expressions.ParameterExpression)
    IL_0143:  stloc.0
    IL_0144:  br         IL_01df

    IL_0149:  ldarg.0
    IL_014a:  ldarg.1
    IL_014b:  castclass  [System.Core]System.Linq.Expressions.MemberExpression
    IL_0150:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::VisitMemberAccess(class [System.Core]System.Linq.Expressions.MemberExpression)
    IL_0155:  stloc.0
    IL_0156:  br         IL_01df

    IL_015b:  ldarg.0
    IL_015c:  ldarg.1
    IL_015d:  castclass  [System.Core]System.Linq.Expressions.MethodCallExpression
    IL_0162:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::VisitMethodCall(class [System.Core]System.Linq.Expressions.MethodCallExpression)
    IL_0167:  stloc.0
    IL_0168:  br.s       IL_01df

    IL_016a:  ldarg.0
    IL_016b:  ldarg.1
    IL_016c:  castclass  [System.Core]System.Linq.Expressions.LambdaExpression
    IL_0171:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::VisitLambda(class [System.Core]System.Linq.Expressions.LambdaExpression)
    IL_0176:  stloc.0
    IL_0177:  br.s       IL_01df

    IL_0179:  ldarg.0
    IL_017a:  ldarg.1
    IL_017b:  castclass  [System.Core]System.Linq.Expressions.NewExpression
    IL_0180:  callvirt   instance class [System.Core]System.Linq.Expressions.NewExpression NHibernate.Linq.Visitors.ExpressionVisitor::VisitNew(class [System.Core]System.Linq.Expressions.NewExpression)
    IL_0185:  stloc.0
    IL_0186:  br.s       IL_01df

    IL_0188:  ldarg.0
    IL_0189:  ldarg.1
    IL_018a:  castclass  [System.Core]System.Linq.Expressions.NewArrayExpression
    IL_018f:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::VisitNewArray(class [System.Core]System.Linq.Expressions.NewArrayExpression)
    IL_0194:  stloc.0
    IL_0195:  br.s       IL_01df

    IL_0197:  ldarg.0
    IL_0198:  ldarg.1
    IL_0199:  castclass  [System.Core]System.Linq.Expressions.InvocationExpression
    IL_019e:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::VisitInvocation(class [System.Core]System.Linq.Expressions.InvocationExpression)
    IL_01a3:  stloc.0
    IL_01a4:  br.s       IL_01df

    IL_01a6:  ldarg.0
    IL_01a7:  ldarg.1
    IL_01a8:  castclass  [System.Core]System.Linq.Expressions.MemberInitExpression
    IL_01ad:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::VisitMemberInit(class [System.Core]System.Linq.Expressions.MemberInitExpression)
    IL_01b2:  stloc.0
    IL_01b3:  br.s       IL_01df

    IL_01b5:  ldarg.0
    IL_01b6:  ldarg.1
    IL_01b7:  castclass  [System.Core]System.Linq.Expressions.ListInitExpression
    IL_01bc:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::VisitListInit(class [System.Core]System.Linq.Expressions.ListInitExpression)
    IL_01c1:  stloc.0
    IL_01c2:  br.s       IL_01df

    IL_01c4:  ldstr      "Unhandled expression type: '{0}'"
    IL_01c9:  ldarg.1
    IL_01ca:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.ExpressionType [System.Core]System.Linq.Expressions.Expression::get_NodeType()
    IL_01cf:  box        [System.Core]System.Linq.Expressions.ExpressionType
    IL_01d4:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_01d9:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor(string)
    IL_01de:  throw

    IL_01df:  ldloc.0
    IL_01e0:  ret
  } // end of method ExpressionVisitor::Visit

  .method family hidebysig newslot virtual 
          instance class [System.Core]System.Linq.Expressions.MemberBinding 
          VisitBinding(class [System.Core]System.Linq.Expressions.MemberBinding binding) cil managed
  {
    // Code size       102 (0x66)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.MemberBinding V_0,
             valuetype [System.Core]System.Linq.Expressions.MemberBindingType V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.MemberBindingType [System.Core]System.Linq.Expressions.MemberBinding::get_BindingType()
    IL_0007:  stloc.1
    IL_0008:  ldloc.1
    IL_0009:  switch     ( 
                          IL_001c,
                          IL_002b,
                          IL_003a)
    IL_001a:  br.s       IL_0049

    IL_001c:  ldarg.0
    IL_001d:  ldarg.1
    IL_001e:  castclass  [System.Core]System.Linq.Expressions.MemberAssignment
    IL_0023:  callvirt   instance class [System.Core]System.Linq.Expressions.MemberAssignment NHibernate.Linq.Visitors.ExpressionVisitor::VisitMemberAssignment(class [System.Core]System.Linq.Expressions.MemberAssignment)
    IL_0028:  stloc.0
    IL_0029:  br.s       IL_0064

    IL_002b:  ldarg.0
    IL_002c:  ldarg.1
    IL_002d:  castclass  [System.Core]System.Linq.Expressions.MemberMemberBinding
    IL_0032:  callvirt   instance class [System.Core]System.Linq.Expressions.MemberMemberBinding NHibernate.Linq.Visitors.ExpressionVisitor::VisitMemberMemberBinding(class [System.Core]System.Linq.Expressions.MemberMemberBinding)
    IL_0037:  stloc.0
    IL_0038:  br.s       IL_0064

    IL_003a:  ldarg.0
    IL_003b:  ldarg.1
    IL_003c:  castclass  [System.Core]System.Linq.Expressions.MemberListBinding
    IL_0041:  callvirt   instance class [System.Core]System.Linq.Expressions.MemberListBinding NHibernate.Linq.Visitors.ExpressionVisitor::VisitMemberListBinding(class [System.Core]System.Linq.Expressions.MemberListBinding)
    IL_0046:  stloc.0
    IL_0047:  br.s       IL_0064

    IL_0049:  ldstr      "Unhandled binding type '{0}'"
    IL_004e:  ldarg.1
    IL_004f:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.MemberBindingType [System.Core]System.Linq.Expressions.MemberBinding::get_BindingType()
    IL_0054:  box        [System.Core]System.Linq.Expressions.MemberBindingType
    IL_0059:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_005e:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor(string)
    IL_0063:  throw

    IL_0064:  ldloc.0
    IL_0065:  ret
  } // end of method ExpressionVisitor::VisitBinding

  .method family hidebysig newslot virtual 
          instance class [System.Core]System.Linq.Expressions.ElementInit 
          VisitElementInitializer(class [System.Core]System.Linq.Expressions.ElementInit initializer) cil managed
  {
    // Code size       49 (0x31)
    .maxstack  2
    .locals init (class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> V_0,
             class [System.Core]System.Linq.Expressions.ElementInit V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.ElementInit::get_Arguments()
    IL_0008:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> NHibernate.Linq.Visitors.ExpressionVisitor::VisitList(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>)
    IL_000d:  stloc.0
    IL_000e:  ldloc.0
    IL_000f:  ldarg.1
    IL_0010:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.ElementInit::get_Arguments()
    IL_0015:  ceq
    IL_0017:  stloc.2
    IL_0018:  ldloc.2
    IL_0019:  brtrue.s   IL_002b

    IL_001b:  nop
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [System.Core]System.Linq.Expressions.ElementInit::get_AddMethod()
    IL_0022:  ldloc.0
    IL_0023:  call       class [System.Core]System.Linq.Expressions.ElementInit [System.Core]System.Linq.Expressions.Expression::ElementInit(class [mscorlib]System.Reflection.MethodInfo,
                                                                                                                                             class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.Expression>)
    IL_0028:  stloc.1
    IL_0029:  br.s       IL_002f

    IL_002b:  ldarg.1
    IL_002c:  stloc.1
    IL_002d:  br.s       IL_002f

    IL_002f:  ldloc.1
    IL_0030:  ret
  } // end of method ExpressionVisitor::VisitElementInitializer

  .method family hidebysig newslot virtual 
          instance class [System.Core]System.Linq.Expressions.Expression 
          VisitUnary(class [System.Core]System.Linq.Expressions.UnaryExpression u) cil managed
  {
    // Code size       61 (0x3d)
    .maxstack  4
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             class [System.Core]System.Linq.Expressions.Expression V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.UnaryExpression::get_Operand()
    IL_0008:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_000d:  stloc.0
    IL_000e:  ldloc.0
    IL_000f:  ldarg.1
    IL_0010:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.UnaryExpression::get_Operand()
    IL_0015:  ceq
    IL_0017:  stloc.2
    IL_0018:  ldloc.2
    IL_0019:  brtrue.s   IL_0037

    IL_001b:  nop
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.ExpressionType [System.Core]System.Linq.Expressions.Expression::get_NodeType()
    IL_0022:  ldloc.0
    IL_0023:  ldarg.1
    IL_0024:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_0029:  ldarg.1
    IL_002a:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [System.Core]System.Linq.Expressions.UnaryExpression::get_Method()
    IL_002f:  call       class [System.Core]System.Linq.Expressions.UnaryExpression [System.Core]System.Linq.Expressions.Expression::MakeUnary(valuetype [System.Core]System.Linq.Expressions.ExpressionType,
                                                                                                                                               class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                               class [mscorlib]System.Type,
                                                                                                                                               class [mscorlib]System.Reflection.MethodInfo)
    IL_0034:  stloc.1
    IL_0035:  br.s       IL_003b

    IL_0037:  ldarg.1
    IL_0038:  stloc.1
    IL_0039:  br.s       IL_003b

    IL_003b:  ldloc.1
    IL_003c:  ret
  } // end of method ExpressionVisitor::VisitUnary

  .method family hidebysig newslot virtual 
          instance class [System.Core]System.Linq.Expressions.Expression 
          VisitBinary(class [System.Core]System.Linq.Expressions.BinaryExpression b) cil managed
  {
    // Code size       154 (0x9a)
    .maxstack  5
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             class [System.Core]System.Linq.Expressions.Expression V_1,
             class [System.Core]System.Linq.Expressions.Expression V_2,
             class [System.Core]System.Linq.Expressions.Expression V_3,
             bool V_4)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.BinaryExpression::get_Left()
    IL_0008:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_000d:  stloc.0
    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.BinaryExpression::get_Right()
    IL_0015:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_001a:  stloc.1
    IL_001b:  ldarg.0
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance class [System.Core]System.Linq.Expressions.LambdaExpression [System.Core]System.Linq.Expressions.BinaryExpression::get_Conversion()
    IL_0022:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0027:  stloc.2
    IL_0028:  ldloc.0
    IL_0029:  ldarg.1
    IL_002a:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.BinaryExpression::get_Left()
    IL_002f:  bne.un.s   IL_0045

    IL_0031:  ldloc.1
    IL_0032:  ldarg.1
    IL_0033:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.BinaryExpression::get_Right()
    IL_0038:  bne.un.s   IL_0045

    IL_003a:  ldloc.2
    IL_003b:  ldarg.1
    IL_003c:  callvirt   instance class [System.Core]System.Linq.Expressions.LambdaExpression [System.Core]System.Linq.Expressions.BinaryExpression::get_Conversion()
    IL_0041:  ceq
    IL_0043:  br.s       IL_0046

    IL_0045:  ldc.i4.0
    IL_0046:  stloc.s    V_4
    IL_0048:  ldloc.s    V_4
    IL_004a:  brtrue.s   IL_0094

    IL_004c:  nop
    IL_004d:  ldarg.1
    IL_004e:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.ExpressionType [System.Core]System.Linq.Expressions.Expression::get_NodeType()
    IL_0053:  ldc.i4.7
    IL_0054:  bne.un.s   IL_0061

    IL_0056:  ldarg.1
    IL_0057:  callvirt   instance class [System.Core]System.Linq.Expressions.LambdaExpression [System.Core]System.Linq.Expressions.BinaryExpression::get_Conversion()
    IL_005c:  ldnull
    IL_005d:  ceq
    IL_005f:  br.s       IL_0062

    IL_0061:  ldc.i4.1
    IL_0062:  stloc.s    V_4
    IL_0064:  ldloc.s    V_4
    IL_0066:  brtrue.s   IL_0078

    IL_0068:  ldloc.0
    IL_0069:  ldloc.1
    IL_006a:  ldloc.2
    IL_006b:  isinst     [System.Core]System.Linq.Expressions.LambdaExpression
    IL_0070:  call       class [System.Core]System.Linq.Expressions.BinaryExpression [System.Core]System.Linq.Expressions.Expression::Coalesce(class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                               class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                               class [System.Core]System.Linq.Expressions.LambdaExpression)
    IL_0075:  stloc.3
    IL_0076:  br.s       IL_0098

    IL_0078:  ldarg.1
    IL_0079:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.ExpressionType [System.Core]System.Linq.Expressions.Expression::get_NodeType()
    IL_007e:  ldloc.0
    IL_007f:  ldloc.1
    IL_0080:  ldarg.1
    IL_0081:  callvirt   instance bool [System.Core]System.Linq.Expressions.BinaryExpression::get_IsLiftedToNull()
    IL_0086:  ldarg.1
    IL_0087:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [System.Core]System.Linq.Expressions.BinaryExpression::get_Method()
    IL_008c:  call       class [System.Core]System.Linq.Expressions.BinaryExpression [System.Core]System.Linq.Expressions.Expression::MakeBinary(valuetype [System.Core]System.Linq.Expressions.ExpressionType,
                                                                                                                                                 class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                                 class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                                 bool,
                                                                                                                                                 class [mscorlib]System.Reflection.MethodInfo)
    IL_0091:  stloc.3
    IL_0092:  br.s       IL_0098

    IL_0094:  ldarg.1
    IL_0095:  stloc.3
    IL_0096:  br.s       IL_0098

    IL_0098:  ldloc.3
    IL_0099:  ret
  } // end of method ExpressionVisitor::VisitBinary

  .method family hidebysig newslot virtual 
          instance class [System.Core]System.Linq.Expressions.Expression 
          VisitTypeIs(class [System.Core]System.Linq.Expressions.TypeBinaryExpression b) cil managed
  {
    // Code size       49 (0x31)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             class [System.Core]System.Linq.Expressions.Expression V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.TypeBinaryExpression::get_Expression()
    IL_0008:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_000d:  stloc.0
    IL_000e:  ldloc.0
    IL_000f:  ldarg.1
    IL_0010:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.TypeBinaryExpression::get_Expression()
    IL_0015:  ceq
    IL_0017:  stloc.2
    IL_0018:  ldloc.2
    IL_0019:  brtrue.s   IL_002b

    IL_001b:  nop
    IL_001c:  ldloc.0
    IL_001d:  ldarg.1
    IL_001e:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.TypeBinaryExpression::get_TypeOperand()
    IL_0023:  call       class [System.Core]System.Linq.Expressions.TypeBinaryExpression [System.Core]System.Linq.Expressions.Expression::TypeIs(class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                                 class [mscorlib]System.Type)
    IL_0028:  stloc.1
    IL_0029:  br.s       IL_002f

    IL_002b:  ldarg.1
    IL_002c:  stloc.1
    IL_002d:  br.s       IL_002f

    IL_002f:  ldloc.1
    IL_0030:  ret
  } // end of method ExpressionVisitor::VisitTypeIs

  .method family hidebysig newslot virtual 
          instance class [System.Core]System.Linq.Expressions.Expression 
          VisitConstant(class [System.Core]System.Linq.Expressions.ConstantExpression c) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method ExpressionVisitor::VisitConstant

  .method family hidebysig newslot virtual 
          instance class [System.Core]System.Linq.Expressions.Expression 
          VisitConditional(class [System.Core]System.Linq.Expressions.ConditionalExpression c) cil managed
  {
    // Code size       94 (0x5e)
    .maxstack  3
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             class [System.Core]System.Linq.Expressions.Expression V_1,
             class [System.Core]System.Linq.Expressions.Expression V_2,
             class [System.Core]System.Linq.Expressions.Expression V_3,
             bool V_4)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.ConditionalExpression::get_Test()
    IL_0008:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_000d:  stloc.0
    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.ConditionalExpression::get_IfTrue()
    IL_0015:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_001a:  stloc.1
    IL_001b:  ldarg.0
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.ConditionalExpression::get_IfFalse()
    IL_0022:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0027:  stloc.2
    IL_0028:  ldloc.0
    IL_0029:  ldarg.1
    IL_002a:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.ConditionalExpression::get_Test()
    IL_002f:  bne.un.s   IL_0045

    IL_0031:  ldloc.1
    IL_0032:  ldarg.1
    IL_0033:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.ConditionalExpression::get_IfTrue()
    IL_0038:  bne.un.s   IL_0045

    IL_003a:  ldloc.2
    IL_003b:  ldarg.1
    IL_003c:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.ConditionalExpression::get_IfFalse()
    IL_0041:  ceq
    IL_0043:  br.s       IL_0046

    IL_0045:  ldc.i4.0
    IL_0046:  stloc.s    V_4
    IL_0048:  ldloc.s    V_4
    IL_004a:  brtrue.s   IL_0058

    IL_004c:  nop
    IL_004d:  ldloc.0
    IL_004e:  ldloc.1
    IL_004f:  ldloc.2
    IL_0050:  call       class [System.Core]System.Linq.Expressions.ConditionalExpression [System.Core]System.Linq.Expressions.Expression::Condition(class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                                     class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                                     class [System.Core]System.Linq.Expressions.Expression)
    IL_0055:  stloc.3
    IL_0056:  br.s       IL_005c

    IL_0058:  ldarg.1
    IL_0059:  stloc.3
    IL_005a:  br.s       IL_005c

    IL_005c:  ldloc.3
    IL_005d:  ret
  } // end of method ExpressionVisitor::VisitConditional

  .method family hidebysig newslot virtual 
          instance class [System.Core]System.Linq.Expressions.Expression 
          VisitParameter(class [System.Core]System.Linq.Expressions.ParameterExpression p) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method ExpressionVisitor::VisitParameter

  .method family hidebysig newslot virtual 
          instance class [System.Core]System.Linq.Expressions.Expression 
          VisitMemberAccess(class [System.Core]System.Linq.Expressions.MemberExpression m) cil managed
  {
    // Code size       49 (0x31)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             class [System.Core]System.Linq.Expressions.Expression V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.MemberExpression::get_Expression()
    IL_0008:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_000d:  stloc.0
    IL_000e:  ldloc.0
    IL_000f:  ldarg.1
    IL_0010:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.MemberExpression::get_Expression()
    IL_0015:  ceq
    IL_0017:  stloc.2
    IL_0018:  ldloc.2
    IL_0019:  brtrue.s   IL_002b

    IL_001b:  nop
    IL_001c:  ldloc.0
    IL_001d:  ldarg.1
    IL_001e:  callvirt   instance class [mscorlib]System.Reflection.MemberInfo [System.Core]System.Linq.Expressions.MemberExpression::get_Member()
    IL_0023:  call       class [System.Core]System.Linq.Expressions.MemberExpression [System.Core]System.Linq.Expressions.Expression::MakeMemberAccess(class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                                       class [mscorlib]System.Reflection.MemberInfo)
    IL_0028:  stloc.1
    IL_0029:  br.s       IL_002f

    IL_002b:  ldarg.1
    IL_002c:  stloc.1
    IL_002d:  br.s       IL_002f

    IL_002f:  ldloc.1
    IL_0030:  ret
  } // end of method ExpressionVisitor::VisitMemberAccess

  .method family hidebysig newslot virtual 
          instance class [System.Core]System.Linq.Expressions.Expression 
          VisitMethodCall(class [System.Core]System.Linq.Expressions.MethodCallExpression m) cil managed
  {
    // Code size       75 (0x4b)
    .maxstack  3
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.Expression> V_1,
             class [System.Core]System.Linq.Expressions.Expression V_2,
             bool V_3)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.MethodCallExpression::get_Object()
    IL_0008:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_000d:  stloc.0
    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0015:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> NHibernate.Linq.Visitors.ExpressionVisitor::VisitList(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>)
    IL_001a:  stloc.1
    IL_001b:  ldloc.0
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.MethodCallExpression::get_Object()
    IL_0022:  bne.un.s   IL_002f

    IL_0024:  ldloc.1
    IL_0025:  ldarg.1
    IL_0026:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_002b:  ceq
    IL_002d:  br.s       IL_0030

    IL_002f:  ldc.i4.0
    IL_0030:  stloc.3
    IL_0031:  ldloc.3
    IL_0032:  brtrue.s   IL_0045

    IL_0034:  nop
    IL_0035:  ldloc.0
    IL_0036:  ldarg.1
    IL_0037:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [System.Core]System.Linq.Expressions.MethodCallExpression::get_Method()
    IL_003c:  ldloc.1
    IL_003d:  call       class [System.Core]System.Linq.Expressions.MethodCallExpression [System.Core]System.Linq.Expressions.Expression::Call(class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                               class [mscorlib]System.Reflection.MethodInfo,
                                                                                                                                               class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.Expression>)
    IL_0042:  stloc.2
    IL_0043:  br.s       IL_0049

    IL_0045:  ldarg.1
    IL_0046:  stloc.2
    IL_0047:  br.s       IL_0049

    IL_0049:  ldloc.2
    IL_004a:  ret
  } // end of method ExpressionVisitor::VisitMethodCall

  .method family hidebysig newslot virtual 
          instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> 
          VisitList(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> original) cil managed
  {
    // Code size       166 (0xa6)
    .maxstack  3
    .locals init (class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.Expression> V_0,
             int32 V_1,
             int32 V_2,
             class [System.Core]System.Linq.Expressions.Expression V_3,
             int32 V_4,
             class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> V_5,
             bool V_6)
    IL_0000:  nop
    IL_0001:  ldnull
    IL_0002:  stloc.0
    IL_0003:  ldc.i4.0
    IL_0004:  stloc.1
    IL_0005:  ldarg.1
    IL_0006:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Count()
    IL_000b:  stloc.2
    IL_000c:  br.s       IL_0080

    IL_000e:  nop
    IL_000f:  ldarg.0
    IL_0010:  ldarg.1
    IL_0011:  ldloc.1
    IL_0012:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_0017:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_001c:  stloc.3
    IL_001d:  ldloc.0
    IL_001e:  ldnull
    IL_001f:  ceq
    IL_0021:  stloc.s    V_6
    IL_0023:  ldloc.s    V_6
    IL_0025:  brtrue.s   IL_0033

    IL_0027:  nop
    IL_0028:  ldloc.0
    IL_0029:  ldloc.3
    IL_002a:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.Expression>::Add(!0)
    IL_002f:  nop
    IL_0030:  nop
    IL_0031:  br.s       IL_007b

    IL_0033:  ldloc.3
    IL_0034:  ldarg.1
    IL_0035:  ldloc.1
    IL_0036:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_003b:  ceq
    IL_003d:  stloc.s    V_6
    IL_003f:  ldloc.s    V_6
    IL_0041:  brtrue.s   IL_007b

    IL_0043:  nop
    IL_0044:  ldloc.2
    IL_0045:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.Expression>::.ctor(int32)
    IL_004a:  stloc.0
    IL_004b:  ldc.i4.0
    IL_004c:  stloc.s    V_4
    IL_004e:  br.s       IL_0067

    IL_0050:  nop
    IL_0051:  ldloc.0
    IL_0052:  ldarg.1
    IL_0053:  ldloc.s    V_4
    IL_0055:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_005a:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.Expression>::Add(!0)
    IL_005f:  nop
    IL_0060:  nop
    IL_0061:  ldloc.s    V_4
    IL_0063:  ldc.i4.1
    IL_0064:  add
    IL_0065:  stloc.s    V_4
    IL_0067:  ldloc.s    V_4
    IL_0069:  ldloc.1
    IL_006a:  clt
    IL_006c:  stloc.s    V_6
    IL_006e:  ldloc.s    V_6
    IL_0070:  brtrue.s   IL_0050

    IL_0072:  ldloc.0
    IL_0073:  ldloc.3
    IL_0074:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.Expression>::Add(!0)
    IL_0079:  nop
    IL_007a:  nop
    IL_007b:  nop
    IL_007c:  ldloc.1
    IL_007d:  ldc.i4.1
    IL_007e:  add
    IL_007f:  stloc.1
    IL_0080:  ldloc.1
    IL_0081:  ldloc.2
    IL_0082:  clt
    IL_0084:  stloc.s    V_6
    IL_0086:  ldloc.s    V_6
    IL_0088:  brtrue.s   IL_000e

    IL_008a:  ldloc.0
    IL_008b:  ldnull
    IL_008c:  ceq
    IL_008e:  stloc.s    V_6
    IL_0090:  ldloc.s    V_6
    IL_0092:  brtrue.s   IL_009e

    IL_0094:  ldloc.0
    IL_0095:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<!0> class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.Expression>::AsReadOnly()
    IL_009a:  stloc.s    V_5
    IL_009c:  br.s       IL_00a3

    IL_009e:  ldarg.1
    IL_009f:  stloc.s    V_5
    IL_00a1:  br.s       IL_00a3

    IL_00a3:  ldloc.s    V_5
    IL_00a5:  ret
  } // end of method ExpressionVisitor::VisitList

  .method family hidebysig newslot virtual 
          instance class [System.Core]System.Linq.Expressions.MemberAssignment 
          VisitMemberAssignment(class [System.Core]System.Linq.Expressions.MemberAssignment assignment) cil managed
  {
    // Code size       49 (0x31)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             class [System.Core]System.Linq.Expressions.MemberAssignment V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.MemberAssignment::get_Expression()
    IL_0008:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_000d:  stloc.0
    IL_000e:  ldloc.0
    IL_000f:  ldarg.1
    IL_0010:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.MemberAssignment::get_Expression()
    IL_0015:  ceq
    IL_0017:  stloc.2
    IL_0018:  ldloc.2
    IL_0019:  brtrue.s   IL_002b

    IL_001b:  nop
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance class [mscorlib]System.Reflection.MemberInfo [System.Core]System.Linq.Expressions.MemberBinding::get_Member()
    IL_0022:  ldloc.0
    IL_0023:  call       class [System.Core]System.Linq.Expressions.MemberAssignment [System.Core]System.Linq.Expressions.Expression::Bind(class [mscorlib]System.Reflection.MemberInfo,
                                                                                                                                           class [System.Core]System.Linq.Expressions.Expression)
    IL_0028:  stloc.1
    IL_0029:  br.s       IL_002f

    IL_002b:  ldarg.1
    IL_002c:  stloc.1
    IL_002d:  br.s       IL_002f

    IL_002f:  ldloc.1
    IL_0030:  ret
  } // end of method ExpressionVisitor::VisitMemberAssignment

  .method family hidebysig newslot virtual 
          instance class [System.Core]System.Linq.Expressions.MemberMemberBinding 
          VisitMemberMemberBinding(class [System.Core]System.Linq.Expressions.MemberMemberBinding binding) cil managed
  {
    // Code size       49 (0x31)
    .maxstack  2
    .locals init (class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.MemberBinding> V_0,
             class [System.Core]System.Linq.Expressions.MemberMemberBinding V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.MemberBinding> [System.Core]System.Linq.Expressions.MemberMemberBinding::get_Bindings()
    IL_0008:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.MemberBinding> NHibernate.Linq.Visitors.ExpressionVisitor::VisitBindingList(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.MemberBinding>)
    IL_000d:  stloc.0
    IL_000e:  ldloc.0
    IL_000f:  ldarg.1
    IL_0010:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.MemberBinding> [System.Core]System.Linq.Expressions.MemberMemberBinding::get_Bindings()
    IL_0015:  ceq
    IL_0017:  stloc.2
    IL_0018:  ldloc.2
    IL_0019:  brtrue.s   IL_002b

    IL_001b:  nop
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance class [mscorlib]System.Reflection.MemberInfo [System.Core]System.Linq.Expressions.MemberBinding::get_Member()
    IL_0022:  ldloc.0
    IL_0023:  call       class [System.Core]System.Linq.Expressions.MemberMemberBinding [System.Core]System.Linq.Expressions.Expression::MemberBind(class [mscorlib]System.Reflection.MemberInfo,
                                                                                                                                                    class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.MemberBinding>)
    IL_0028:  stloc.1
    IL_0029:  br.s       IL_002f

    IL_002b:  ldarg.1
    IL_002c:  stloc.1
    IL_002d:  br.s       IL_002f

    IL_002f:  ldloc.1
    IL_0030:  ret
  } // end of method ExpressionVisitor::VisitMemberMemberBinding

  .method family hidebysig newslot virtual 
          instance class [System.Core]System.Linq.Expressions.MemberListBinding 
          VisitMemberListBinding(class [System.Core]System.Linq.Expressions.MemberListBinding binding) cil managed
  {
    // Code size       49 (0x31)
    .maxstack  2
    .locals init (class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.ElementInit> V_0,
             class [System.Core]System.Linq.Expressions.MemberListBinding V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.ElementInit> [System.Core]System.Linq.Expressions.MemberListBinding::get_Initializers()
    IL_0008:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.ElementInit> NHibernate.Linq.Visitors.ExpressionVisitor::VisitElementInitializerList(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.ElementInit>)
    IL_000d:  stloc.0
    IL_000e:  ldloc.0
    IL_000f:  ldarg.1
    IL_0010:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.ElementInit> [System.Core]System.Linq.Expressions.MemberListBinding::get_Initializers()
    IL_0015:  ceq
    IL_0017:  stloc.2
    IL_0018:  ldloc.2
    IL_0019:  brtrue.s   IL_002b

    IL_001b:  nop
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance class [mscorlib]System.Reflection.MemberInfo [System.Core]System.Linq.Expressions.MemberBinding::get_Member()
    IL_0022:  ldloc.0
    IL_0023:  call       class [System.Core]System.Linq.Expressions.MemberListBinding [System.Core]System.Linq.Expressions.Expression::ListBind(class [mscorlib]System.Reflection.MemberInfo,
                                                                                                                                                class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.ElementInit>)
    IL_0028:  stloc.1
    IL_0029:  br.s       IL_002f

    IL_002b:  ldarg.1
    IL_002c:  stloc.1
    IL_002d:  br.s       IL_002f

    IL_002f:  ldloc.1
    IL_0030:  ret
  } // end of method ExpressionVisitor::VisitMemberListBinding

  .method family hidebysig newslot virtual 
          instance class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.MemberBinding> 
          VisitBindingList(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.MemberBinding> original) cil managed
  {
    // Code size       161 (0xa1)
    .maxstack  3
    .locals init (class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.MemberBinding> V_0,
             int32 V_1,
             int32 V_2,
             class [System.Core]System.Linq.Expressions.MemberBinding V_3,
             int32 V_4,
             class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.MemberBinding> V_5,
             bool V_6)
    IL_0000:  nop
    IL_0001:  ldnull
    IL_0002:  stloc.0
    IL_0003:  ldc.i4.0
    IL_0004:  stloc.1
    IL_0005:  ldarg.1
    IL_0006:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.MemberBinding>::get_Count()
    IL_000b:  stloc.2
    IL_000c:  br.s       IL_0080

    IL_000e:  nop
    IL_000f:  ldarg.0
    IL_0010:  ldarg.1
    IL_0011:  ldloc.1
    IL_0012:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.MemberBinding>::get_Item(int32)
    IL_0017:  callvirt   instance class [System.Core]System.Linq.Expressions.MemberBinding NHibernate.Linq.Visitors.ExpressionVisitor::VisitBinding(class [System.Core]System.Linq.Expressions.MemberBinding)
    IL_001c:  stloc.3
    IL_001d:  ldloc.0
    IL_001e:  ldnull
    IL_001f:  ceq
    IL_0021:  stloc.s    V_6
    IL_0023:  ldloc.s    V_6
    IL_0025:  brtrue.s   IL_0033

    IL_0027:  nop
    IL_0028:  ldloc.0
    IL_0029:  ldloc.3
    IL_002a:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.MemberBinding>::Add(!0)
    IL_002f:  nop
    IL_0030:  nop
    IL_0031:  br.s       IL_007b

    IL_0033:  ldloc.3
    IL_0034:  ldarg.1
    IL_0035:  ldloc.1
    IL_0036:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.MemberBinding>::get_Item(int32)
    IL_003b:  ceq
    IL_003d:  stloc.s    V_6
    IL_003f:  ldloc.s    V_6
    IL_0041:  brtrue.s   IL_007b

    IL_0043:  nop
    IL_0044:  ldloc.2
    IL_0045:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.MemberBinding>::.ctor(int32)
    IL_004a:  stloc.0
    IL_004b:  ldc.i4.0
    IL_004c:  stloc.s    V_4
    IL_004e:  br.s       IL_0067

    IL_0050:  nop
    IL_0051:  ldloc.0
    IL_0052:  ldarg.1
    IL_0053:  ldloc.s    V_4
    IL_0055:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.MemberBinding>::get_Item(int32)
    IL_005a:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.MemberBinding>::Add(!0)
    IL_005f:  nop
    IL_0060:  nop
    IL_0061:  ldloc.s    V_4
    IL_0063:  ldc.i4.1
    IL_0064:  add
    IL_0065:  stloc.s    V_4
    IL_0067:  ldloc.s    V_4
    IL_0069:  ldloc.1
    IL_006a:  clt
    IL_006c:  stloc.s    V_6
    IL_006e:  ldloc.s    V_6
    IL_0070:  brtrue.s   IL_0050

    IL_0072:  ldloc.0
    IL_0073:  ldloc.3
    IL_0074:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.MemberBinding>::Add(!0)
    IL_0079:  nop
    IL_007a:  nop
    IL_007b:  nop
    IL_007c:  ldloc.1
    IL_007d:  ldc.i4.1
    IL_007e:  add
    IL_007f:  stloc.1
    IL_0080:  ldloc.1
    IL_0081:  ldloc.2
    IL_0082:  clt
    IL_0084:  stloc.s    V_6
    IL_0086:  ldloc.s    V_6
    IL_0088:  brtrue.s   IL_000e

    IL_008a:  ldloc.0
    IL_008b:  ldnull
    IL_008c:  ceq
    IL_008e:  stloc.s    V_6
    IL_0090:  ldloc.s    V_6
    IL_0092:  brtrue.s   IL_0099

    IL_0094:  ldloc.0
    IL_0095:  stloc.s    V_5
    IL_0097:  br.s       IL_009e

    IL_0099:  ldarg.1
    IL_009a:  stloc.s    V_5
    IL_009c:  br.s       IL_009e

    IL_009e:  ldloc.s    V_5
    IL_00a0:  ret
  } // end of method ExpressionVisitor::VisitBindingList

  .method family hidebysig newslot virtual 
          instance class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.ElementInit> 
          VisitElementInitializerList(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.ElementInit> original) cil managed
  {
    // Code size       161 (0xa1)
    .maxstack  3
    .locals init (class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.ElementInit> V_0,
             int32 V_1,
             int32 V_2,
             class [System.Core]System.Linq.Expressions.ElementInit V_3,
             int32 V_4,
             class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.ElementInit> V_5,
             bool V_6)
    IL_0000:  nop
    IL_0001:  ldnull
    IL_0002:  stloc.0
    IL_0003:  ldc.i4.0
    IL_0004:  stloc.1
    IL_0005:  ldarg.1
    IL_0006:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.ElementInit>::get_Count()
    IL_000b:  stloc.2
    IL_000c:  br.s       IL_0080

    IL_000e:  nop
    IL_000f:  ldarg.0
    IL_0010:  ldarg.1
    IL_0011:  ldloc.1
    IL_0012:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.ElementInit>::get_Item(int32)
    IL_0017:  callvirt   instance class [System.Core]System.Linq.Expressions.ElementInit NHibernate.Linq.Visitors.ExpressionVisitor::VisitElementInitializer(class [System.Core]System.Linq.Expressions.ElementInit)
    IL_001c:  stloc.3
    IL_001d:  ldloc.0
    IL_001e:  ldnull
    IL_001f:  ceq
    IL_0021:  stloc.s    V_6
    IL_0023:  ldloc.s    V_6
    IL_0025:  brtrue.s   IL_0033

    IL_0027:  nop
    IL_0028:  ldloc.0
    IL_0029:  ldloc.3
    IL_002a:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.ElementInit>::Add(!0)
    IL_002f:  nop
    IL_0030:  nop
    IL_0031:  br.s       IL_007b

    IL_0033:  ldloc.3
    IL_0034:  ldarg.1
    IL_0035:  ldloc.1
    IL_0036:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.ElementInit>::get_Item(int32)
    IL_003b:  ceq
    IL_003d:  stloc.s    V_6
    IL_003f:  ldloc.s    V_6
    IL_0041:  brtrue.s   IL_007b

    IL_0043:  nop
    IL_0044:  ldloc.2
    IL_0045:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.ElementInit>::.ctor(int32)
    IL_004a:  stloc.0
    IL_004b:  ldc.i4.0
    IL_004c:  stloc.s    V_4
    IL_004e:  br.s       IL_0067

    IL_0050:  nop
    IL_0051:  ldloc.0
    IL_0052:  ldarg.1
    IL_0053:  ldloc.s    V_4
    IL_0055:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.ElementInit>::get_Item(int32)
    IL_005a:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.ElementInit>::Add(!0)
    IL_005f:  nop
    IL_0060:  nop
    IL_0061:  ldloc.s    V_4
    IL_0063:  ldc.i4.1
    IL_0064:  add
    IL_0065:  stloc.s    V_4
    IL_0067:  ldloc.s    V_4
    IL_0069:  ldloc.1
    IL_006a:  clt
    IL_006c:  stloc.s    V_6
    IL_006e:  ldloc.s    V_6
    IL_0070:  brtrue.s   IL_0050

    IL_0072:  ldloc.0
    IL_0073:  ldloc.3
    IL_0074:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [System.Core]System.Linq.Expressions.ElementInit>::Add(!0)
    IL_0079:  nop
    IL_007a:  nop
    IL_007b:  nop
    IL_007c:  ldloc.1
    IL_007d:  ldc.i4.1
    IL_007e:  add
    IL_007f:  stloc.1
    IL_0080:  ldloc.1
    IL_0081:  ldloc.2
    IL_0082:  clt
    IL_0084:  stloc.s    V_6
    IL_0086:  ldloc.s    V_6
    IL_0088:  brtrue.s   IL_000e

    IL_008a:  ldloc.0
    IL_008b:  ldnull
    IL_008c:  ceq
    IL_008e:  stloc.s    V_6
    IL_0090:  ldloc.s    V_6
    IL_0092:  brtrue.s   IL_0099

    IL_0094:  ldloc.0
    IL_0095:  stloc.s    V_5
    IL_0097:  br.s       IL_009e

    IL_0099:  ldarg.1
    IL_009a:  stloc.s    V_5
    IL_009c:  br.s       IL_009e

    IL_009e:  ldloc.s    V_5
    IL_00a0:  ret
  } // end of method ExpressionVisitor::VisitElementInitializerList

  .method family hidebysig newslot virtual 
          instance class [System.Core]System.Linq.Expressions.Expression 
          VisitLambda(class [System.Core]System.Linq.Expressions.LambdaExpression lambda) cil managed
  {
    // Code size       55 (0x37)
    .maxstack  3
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             class [System.Core]System.Linq.Expressions.Expression V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.LambdaExpression::get_Body()
    IL_0008:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_000d:  stloc.0
    IL_000e:  ldloc.0
    IL_000f:  ldarg.1
    IL_0010:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.LambdaExpression::get_Body()
    IL_0015:  ceq
    IL_0017:  stloc.2
    IL_0018:  ldloc.2
    IL_0019:  brtrue.s   IL_0031

    IL_001b:  nop
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_0022:  ldloc.0
    IL_0023:  ldarg.1
    IL_0024:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.ParameterExpression> [System.Core]System.Linq.Expressions.LambdaExpression::get_Parameters()
    IL_0029:  call       class [System.Core]System.Linq.Expressions.LambdaExpression [System.Core]System.Linq.Expressions.Expression::Lambda(class [mscorlib]System.Type,
                                                                                                                                             class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                             class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.ParameterExpression>)
    IL_002e:  stloc.1
    IL_002f:  br.s       IL_0035

    IL_0031:  ldarg.1
    IL_0032:  stloc.1
    IL_0033:  br.s       IL_0035

    IL_0035:  ldloc.1
    IL_0036:  ret
  } // end of method ExpressionVisitor::VisitLambda

  .method family hidebysig newslot virtual 
          instance class [System.Core]System.Linq.Expressions.NewExpression 
          VisitNew(class [System.Core]System.Linq.Expressions.NewExpression nex) cil managed
  {
    // Code size       83 (0x53)
    .maxstack  3
    .locals init (class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.Expression> V_0,
             class [System.Core]System.Linq.Expressions.NewExpression V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.NewExpression::get_Arguments()
    IL_0008:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> NHibernate.Linq.Visitors.ExpressionVisitor::VisitList(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>)
    IL_000d:  stloc.0
    IL_000e:  ldloc.0
    IL_000f:  ldarg.1
    IL_0010:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.NewExpression::get_Arguments()
    IL_0015:  ceq
    IL_0017:  stloc.2
    IL_0018:  ldloc.2
    IL_0019:  brtrue.s   IL_004d

    IL_001b:  nop
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [mscorlib]System.Reflection.MemberInfo> [System.Core]System.Linq.Expressions.NewExpression::get_Members()
    IL_0022:  ldnull
    IL_0023:  ceq
    IL_0025:  stloc.2
    IL_0026:  ldloc.2
    IL_0027:  brtrue.s   IL_003e

    IL_0029:  ldarg.1
    IL_002a:  callvirt   instance class [mscorlib]System.Reflection.ConstructorInfo [System.Core]System.Linq.Expressions.NewExpression::get_Constructor()
    IL_002f:  ldloc.0
    IL_0030:  ldarg.1
    IL_0031:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [mscorlib]System.Reflection.MemberInfo> [System.Core]System.Linq.Expressions.NewExpression::get_Members()
    IL_0036:  call       class [System.Core]System.Linq.Expressions.NewExpression [System.Core]System.Linq.Expressions.Expression::New(class [mscorlib]System.Reflection.ConstructorInfo,
                                                                                                                                       class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.Expression>,
                                                                                                                                       class [mscorlib]System.Collections.Generic.IEnumerable`1<class [mscorlib]System.Reflection.MemberInfo>)
    IL_003b:  stloc.1
    IL_003c:  br.s       IL_0051

    IL_003e:  ldarg.1
    IL_003f:  callvirt   instance class [mscorlib]System.Reflection.ConstructorInfo [System.Core]System.Linq.Expressions.NewExpression::get_Constructor()
    IL_0044:  ldloc.0
    IL_0045:  call       class [System.Core]System.Linq.Expressions.NewExpression [System.Core]System.Linq.Expressions.Expression::New(class [mscorlib]System.Reflection.ConstructorInfo,
                                                                                                                                       class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.Expression>)
    IL_004a:  stloc.1
    IL_004b:  br.s       IL_0051

    IL_004d:  ldarg.1
    IL_004e:  stloc.1
    IL_004f:  br.s       IL_0051

    IL_0051:  ldloc.1
    IL_0052:  ret
  } // end of method ExpressionVisitor::VisitNew

  .method family hidebysig newslot virtual 
          instance class [System.Core]System.Linq.Expressions.Expression 
          VisitMemberInit(class [System.Core]System.Linq.Expressions.MemberInitExpression 'init') cil managed
  {
    // Code size       69 (0x45)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.NewExpression V_0,
             class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.MemberBinding> V_1,
             class [System.Core]System.Linq.Expressions.Expression V_2,
             bool V_3)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [System.Core]System.Linq.Expressions.NewExpression [System.Core]System.Linq.Expressions.MemberInitExpression::get_NewExpression()
    IL_0008:  callvirt   instance class [System.Core]System.Linq.Expressions.NewExpression NHibernate.Linq.Visitors.ExpressionVisitor::VisitNew(class [System.Core]System.Linq.Expressions.NewExpression)
    IL_000d:  stloc.0
    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.MemberBinding> [System.Core]System.Linq.Expressions.MemberInitExpression::get_Bindings()
    IL_0015:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.MemberBinding> NHibernate.Linq.Visitors.ExpressionVisitor::VisitBindingList(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.MemberBinding>)
    IL_001a:  stloc.1
    IL_001b:  ldloc.0
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance class [System.Core]System.Linq.Expressions.NewExpression [System.Core]System.Linq.Expressions.MemberInitExpression::get_NewExpression()
    IL_0022:  bne.un.s   IL_002f

    IL_0024:  ldloc.1
    IL_0025:  ldarg.1
    IL_0026:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.MemberBinding> [System.Core]System.Linq.Expressions.MemberInitExpression::get_Bindings()
    IL_002b:  ceq
    IL_002d:  br.s       IL_0030

    IL_002f:  ldc.i4.0
    IL_0030:  stloc.3
    IL_0031:  ldloc.3
    IL_0032:  brtrue.s   IL_003f

    IL_0034:  nop
    IL_0035:  ldloc.0
    IL_0036:  ldloc.1
    IL_0037:  call       class [System.Core]System.Linq.Expressions.MemberInitExpression [System.Core]System.Linq.Expressions.Expression::MemberInit(class [System.Core]System.Linq.Expressions.NewExpression,
                                                                                                                                                     class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.MemberBinding>)
    IL_003c:  stloc.2
    IL_003d:  br.s       IL_0043

    IL_003f:  ldarg.1
    IL_0040:  stloc.2
    IL_0041:  br.s       IL_0043

    IL_0043:  ldloc.2
    IL_0044:  ret
  } // end of method ExpressionVisitor::VisitMemberInit

  .method family hidebysig newslot virtual 
          instance class [System.Core]System.Linq.Expressions.Expression 
          VisitListInit(class [System.Core]System.Linq.Expressions.ListInitExpression 'init') cil managed
  {
    // Code size       69 (0x45)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.NewExpression V_0,
             class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.ElementInit> V_1,
             class [System.Core]System.Linq.Expressions.Expression V_2,
             bool V_3)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [System.Core]System.Linq.Expressions.NewExpression [System.Core]System.Linq.Expressions.ListInitExpression::get_NewExpression()
    IL_0008:  callvirt   instance class [System.Core]System.Linq.Expressions.NewExpression NHibernate.Linq.Visitors.ExpressionVisitor::VisitNew(class [System.Core]System.Linq.Expressions.NewExpression)
    IL_000d:  stloc.0
    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.ElementInit> [System.Core]System.Linq.Expressions.ListInitExpression::get_Initializers()
    IL_0015:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.ElementInit> NHibernate.Linq.Visitors.ExpressionVisitor::VisitElementInitializerList(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.ElementInit>)
    IL_001a:  stloc.1
    IL_001b:  ldloc.0
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance class [System.Core]System.Linq.Expressions.NewExpression [System.Core]System.Linq.Expressions.ListInitExpression::get_NewExpression()
    IL_0022:  bne.un.s   IL_002f

    IL_0024:  ldloc.1
    IL_0025:  ldarg.1
    IL_0026:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.ElementInit> [System.Core]System.Linq.Expressions.ListInitExpression::get_Initializers()
    IL_002b:  ceq
    IL_002d:  br.s       IL_0030

    IL_002f:  ldc.i4.0
    IL_0030:  stloc.3
    IL_0031:  ldloc.3
    IL_0032:  brtrue.s   IL_003f

    IL_0034:  nop
    IL_0035:  ldloc.0
    IL_0036:  ldloc.1
    IL_0037:  call       class [System.Core]System.Linq.Expressions.ListInitExpression [System.Core]System.Linq.Expressions.Expression::ListInit(class [System.Core]System.Linq.Expressions.NewExpression,
                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.ElementInit>)
    IL_003c:  stloc.2
    IL_003d:  br.s       IL_0043

    IL_003f:  ldarg.1
    IL_0040:  stloc.2
    IL_0041:  br.s       IL_0043

    IL_0043:  ldloc.2
    IL_0044:  ret
  } // end of method ExpressionVisitor::VisitListInit

  .method family hidebysig newslot virtual 
          instance class [System.Core]System.Linq.Expressions.Expression 
          VisitNewArray(class [System.Core]System.Linq.Expressions.NewArrayExpression na) cil managed
  {
    // Code size       93 (0x5d)
    .maxstack  2
    .locals init (class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.Expression> V_0,
             class [System.Core]System.Linq.Expressions.Expression V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.NewArrayExpression::get_Expressions()
    IL_0008:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> NHibernate.Linq.Visitors.ExpressionVisitor::VisitList(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>)
    IL_000d:  stloc.0
    IL_000e:  ldloc.0
    IL_000f:  ldarg.1
    IL_0010:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.NewArrayExpression::get_Expressions()
    IL_0015:  ceq
    IL_0017:  stloc.2
    IL_0018:  ldloc.2
    IL_0019:  brtrue.s   IL_0057

    IL_001b:  nop
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.ExpressionType [System.Core]System.Linq.Expressions.Expression::get_NodeType()
    IL_0022:  ldc.i4.s   32
    IL_0024:  ceq
    IL_0026:  ldc.i4.0
    IL_0027:  ceq
    IL_0029:  stloc.2
    IL_002a:  ldloc.2
    IL_002b:  brtrue.s   IL_0042

    IL_002d:  nop
    IL_002e:  ldarg.1
    IL_002f:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_0034:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Type::GetElementType()
    IL_0039:  ldloc.0
    IL_003a:  call       class [System.Core]System.Linq.Expressions.NewArrayExpression [System.Core]System.Linq.Expressions.Expression::NewArrayInit(class [mscorlib]System.Type,
                                                                                                                                                     class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.Expression>)
    IL_003f:  stloc.1
    IL_0040:  br.s       IL_005b

    IL_0042:  nop
    IL_0043:  ldarg.1
    IL_0044:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_0049:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Type::GetElementType()
    IL_004e:  ldloc.0
    IL_004f:  call       class [System.Core]System.Linq.Expressions.NewArrayExpression [System.Core]System.Linq.Expressions.Expression::NewArrayBounds(class [mscorlib]System.Type,
                                                                                                                                                       class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.Expression>)
    IL_0054:  stloc.1
    IL_0055:  br.s       IL_005b

    IL_0057:  ldarg.1
    IL_0058:  stloc.1
    IL_0059:  br.s       IL_005b

    IL_005b:  ldloc.1
    IL_005c:  ret
  } // end of method ExpressionVisitor::VisitNewArray

  .method family hidebysig newslot virtual 
          instance class [System.Core]System.Linq.Expressions.Expression 
          VisitInvocation(class [System.Core]System.Linq.Expressions.InvocationExpression iv) cil managed
  {
    // Code size       69 (0x45)
    .maxstack  2
    .locals init (class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.Expression> V_0,
             class [System.Core]System.Linq.Expressions.Expression V_1,
             class [System.Core]System.Linq.Expressions.Expression V_2,
             bool V_3)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.InvocationExpression::get_Arguments()
    IL_0008:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> NHibernate.Linq.Visitors.ExpressionVisitor::VisitList(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>)
    IL_000d:  stloc.0
    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.InvocationExpression::get_Expression()
    IL_0015:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_001a:  stloc.1
    IL_001b:  ldloc.0
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.InvocationExpression::get_Arguments()
    IL_0022:  bne.un.s   IL_002f

    IL_0024:  ldloc.1
    IL_0025:  ldarg.1
    IL_0026:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.InvocationExpression::get_Expression()
    IL_002b:  ceq
    IL_002d:  br.s       IL_0030

    IL_002f:  ldc.i4.0
    IL_0030:  stloc.3
    IL_0031:  ldloc.3
    IL_0032:  brtrue.s   IL_003f

    IL_0034:  nop
    IL_0035:  ldloc.1
    IL_0036:  ldloc.0
    IL_0037:  call       class [System.Core]System.Linq.Expressions.InvocationExpression [System.Core]System.Linq.Expressions.Expression::Invoke(class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.Expression>)
    IL_003c:  stloc.2
    IL_003d:  br.s       IL_0043

    IL_003f:  ldarg.1
    IL_0040:  stloc.2
    IL_0041:  br.s       IL_0043

    IL_0043:  ldloc.2
    IL_0044:  ret
  } // end of method ExpressionVisitor::VisitInvocation

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method ExpressionVisitor::.ctor

} // end of class NHibernate.Linq.Visitors.ExpressionVisitor

.class public auto ansi beforefieldinit NHibernate.Linq.Visitors.AssociationVisitor
       extends NHibernate.Linq.Visitors.ExpressionVisitor
{
  .field private initonly class [NHibernate]NHibernate.Engine.ISessionFactoryImplementor _sessionFactory
  .field private initonly class [mscorlib]System.Collections.Generic.IDictionary`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata> _metaData
  .field private initonly class [mscorlib]System.Collections.Generic.IDictionary`2<class [mscorlib]System.Type,string> _proxyTypes
  .field private initonly class [mscorlib]System.Collections.Generic.IList`1<string> _associationPathsToInclude
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [NHibernate]NHibernate.Engine.ISessionFactoryImplementor sessionFactory) cil managed
  {
    // Code size       68 (0x44)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  call       instance void NHibernate.Linq.Visitors.ExpressionVisitor::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [NHibernate]NHibernate.Engine.ISessionFactoryImplementor NHibernate.Linq.Visitors.AssociationVisitor::_sessionFactory
    IL_000f:  ldarg.0
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class [NHibernate]NHibernate.Engine.ISessionFactoryImplementor NHibernate.Linq.Visitors.AssociationVisitor::_sessionFactory
    IL_0016:  callvirt   instance class [mscorlib]System.Collections.Generic.IDictionary`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata> [NHibernate]NHibernate.ISessionFactory::GetAllClassMetadata()
    IL_001b:  stfld      class [mscorlib]System.Collections.Generic.IDictionary`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata> NHibernate.Linq.Visitors.AssociationVisitor::_metaData
    IL_0020:  ldarg.0
    IL_0021:  ldarg.0
    IL_0022:  ldfld      class [NHibernate]NHibernate.Engine.ISessionFactoryImplementor NHibernate.Linq.Visitors.AssociationVisitor::_sessionFactory
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class [mscorlib]System.Collections.Generic.IDictionary`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata> NHibernate.Linq.Visitors.AssociationVisitor::_metaData
    IL_002d:  call       class [mscorlib]System.Collections.Generic.IDictionary`2<class [mscorlib]System.Type,string> NHibernate.Linq.Util.SessionFactoryUtil::GetProxyMetaData(class [NHibernate]NHibernate.Engine.ISessionFactoryImplementor,
                                                                                                                                                                                class [mscorlib]System.Collections.Generic.IDictionary`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata>)
    IL_0032:  stfld      class [mscorlib]System.Collections.Generic.IDictionary`2<class [mscorlib]System.Type,string> NHibernate.Linq.Visitors.AssociationVisitor::_proxyTypes
    IL_0037:  ldarg.0
    IL_0038:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<string>::.ctor()
    IL_003d:  stfld      class [mscorlib]System.Collections.Generic.IList`1<string> NHibernate.Linq.Visitors.AssociationVisitor::_associationPathsToInclude
    IL_0042:  nop
    IL_0043:  ret
  } // end of method AssociationVisitor::.ctor

  .method private hidebysig instance class [NHibernate]NHibernate.Metadata.IClassMetadata 
          GetMetaData(class [mscorlib]System.Type 'type') cil managed
  {
    // Code size       127 (0x7f)
    .maxstack  3
    .locals init (string V_0,
             class [NHibernate]NHibernate.Metadata.IClassMetadata V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  call       bool NHibernate.Linq.Util.LinqUtil::IsAnonymousType(class [mscorlib]System.Type)
    IL_0007:  ldc.i4.0
    IL_0008:  ceq
    IL_000a:  stloc.2
    IL_000b:  ldloc.2
    IL_000c:  brtrue.s   IL_0012

    IL_000e:  ldnull
    IL_000f:  stloc.1
    IL_0010:  br.s       IL_007d

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [NHibernate]NHibernate.Engine.ISessionFactoryImplementor NHibernate.Linq.Visitors.AssociationVisitor::_sessionFactory
    IL_0018:  ldarg.1
    IL_0019:  callvirt   instance string [NHibernate]NHibernate.Engine.ISessionFactoryImplementor::TryGetGuessEntityName(class [mscorlib]System.Type)
    IL_001e:  stloc.0
    IL_001f:  ldloc.0
    IL_0020:  call       bool [mscorlib]System.String::IsNullOrEmpty(string)
    IL_0025:  brtrue.s   IL_0038

    IL_0027:  ldarg.0
    IL_0028:  ldfld      class [mscorlib]System.Collections.Generic.IDictionary`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata> NHibernate.Linq.Visitors.AssociationVisitor::_metaData
    IL_002d:  ldloc.0
    IL_002e:  callvirt   instance bool class [mscorlib]System.Collections.Generic.IDictionary`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata>::ContainsKey(!0)
    IL_0033:  ldc.i4.0
    IL_0034:  ceq
    IL_0036:  br.s       IL_0039

    IL_0038:  ldc.i4.1
    IL_0039:  stloc.2
    IL_003a:  ldloc.2
    IL_003b:  brtrue.s   IL_004c

    IL_003d:  ldarg.0
    IL_003e:  ldfld      class [mscorlib]System.Collections.Generic.IDictionary`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata> NHibernate.Linq.Visitors.AssociationVisitor::_metaData
    IL_0043:  ldloc.0
    IL_0044:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.IDictionary`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata>::get_Item(!0)
    IL_0049:  stloc.1
    IL_004a:  br.s       IL_007d

    IL_004c:  ldarg.0
    IL_004d:  ldfld      class [mscorlib]System.Collections.Generic.IDictionary`2<class [mscorlib]System.Type,string> NHibernate.Linq.Visitors.AssociationVisitor::_proxyTypes
    IL_0052:  ldarg.1
    IL_0053:  callvirt   instance bool class [mscorlib]System.Collections.Generic.IDictionary`2<class [mscorlib]System.Type,string>::ContainsKey(!0)
    IL_0058:  ldc.i4.0
    IL_0059:  ceq
    IL_005b:  stloc.2
    IL_005c:  ldloc.2
    IL_005d:  brtrue.s   IL_0079

    IL_005f:  ldarg.0
    IL_0060:  ldfld      class [mscorlib]System.Collections.Generic.IDictionary`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata> NHibernate.Linq.Visitors.AssociationVisitor::_metaData
    IL_0065:  ldarg.0
    IL_0066:  ldfld      class [mscorlib]System.Collections.Generic.IDictionary`2<class [mscorlib]System.Type,string> NHibernate.Linq.Visitors.AssociationVisitor::_proxyTypes
    IL_006b:  ldarg.1
    IL_006c:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.IDictionary`2<class [mscorlib]System.Type,string>::get_Item(!0)
    IL_0071:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.IDictionary`2<string,class [NHibernate]NHibernate.Metadata.IClassMetadata>::get_Item(!0)
    IL_0076:  stloc.1
    IL_0077:  br.s       IL_007d

    IL_0079:  ldnull
    IL_007a:  stloc.1
    IL_007b:  br.s       IL_007d

    IL_007d:  ldloc.1
    IL_007e:  ret
  } // end of method AssociationVisitor::GetMetaData

  .method private hidebysig instance class NHibernate.Linq.Expressions.EntityExpression 
          GetParentExpression(class [System.Core]System.Linq.Expressions.MemberExpression expr,
                              [out] string& memberName,
                              [out] class [NHibernate]NHibernate.Type.IType& nhibernateType) cil managed
  {
    // Code size       179 (0xb3)
    .maxstack  4
    .locals init (class NHibernate.Linq.Expressions.CollectionAccessExpression V_0,
             class NHibernate.Linq.Expressions.PropertyAccessExpression V_1,
             class NHibernate.Linq.Expressions.EntityExpression V_2,
             class NHibernate.Linq.Expressions.EntityExpression V_3,
             bool V_4)
    IL_0000:  nop
    IL_0001:  ldarg.2
    IL_0002:  ldnull
    IL_0003:  stind.ref
    IL_0004:  ldarg.3
    IL_0005:  ldnull
    IL_0006:  stind.ref
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.MemberExpression::get_Expression()
    IL_000d:  isinst     NHibernate.Linq.Expressions.CollectionAccessExpression
    IL_0012:  stloc.0
    IL_0013:  ldloc.0
    IL_0014:  ldnull
    IL_0015:  ceq
    IL_0017:  stloc.s    V_4
    IL_0019:  ldloc.s    V_4
    IL_001b:  brtrue.s   IL_0025

    IL_001d:  nop
    IL_001e:  ldnull
    IL_001f:  stloc.3
    IL_0020:  br         IL_00b1

    IL_0025:  ldarg.1
    IL_0026:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.MemberExpression::get_Expression()
    IL_002b:  isinst     NHibernate.Linq.Expressions.PropertyAccessExpression
    IL_0030:  stloc.1
    IL_0031:  ldloc.1
    IL_0032:  ldnull
    IL_0033:  ceq
    IL_0035:  stloc.s    V_4
    IL_0037:  ldloc.s    V_4
    IL_0039:  brtrue.s   IL_0076

    IL_003b:  nop
    IL_003c:  ldarg.2
    IL_003d:  ldloc.1
    IL_003e:  callvirt   instance string NHibernate.Linq.Expressions.PropertyAccessExpression::get_Name()
    IL_0043:  ldstr      "."
    IL_0048:  ldarg.1
    IL_0049:  callvirt   instance class [mscorlib]System.Reflection.MemberInfo [System.Core]System.Linq.Expressions.MemberExpression::get_Member()
    IL_004e:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_0053:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_0058:  stind.ref
    IL_0059:  ldarg.3
    IL_005a:  ldloc.1
    IL_005b:  callvirt   instance class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Expressions.PropertyAccessExpression::get_Expression()
    IL_0060:  callvirt   instance class [NHibernate]NHibernate.Metadata.IClassMetadata NHibernate.Linq.Expressions.EntityExpression::get_MetaData()
    IL_0065:  ldarg.2
    IL_0066:  ldind.ref
    IL_0067:  callvirt   instance class [NHibernate]NHibernate.Type.IType [NHibernate]NHibernate.Metadata.IClassMetadata::GetPropertyType(string)
    IL_006c:  stind.ref
    IL_006d:  ldloc.1
    IL_006e:  callvirt   instance class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Expressions.PropertyAccessExpression::get_Expression()
    IL_0073:  stloc.3
    IL_0074:  br.s       IL_00b1

    IL_0076:  ldarg.1
    IL_0077:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.MemberExpression::get_Expression()
    IL_007c:  isinst     NHibernate.Linq.Expressions.EntityExpression
    IL_0081:  stloc.2
    IL_0082:  ldloc.2
    IL_0083:  ldnull
    IL_0084:  ceq
    IL_0086:  stloc.s    V_4
    IL_0088:  ldloc.s    V_4
    IL_008a:  brtrue.s   IL_00ad

    IL_008c:  nop
    IL_008d:  ldarg.2
    IL_008e:  ldarg.1
    IL_008f:  callvirt   instance class [mscorlib]System.Reflection.MemberInfo [System.Core]System.Linq.Expressions.MemberExpression::get_Member()
    IL_0094:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_0099:  stind.ref
    IL_009a:  ldarg.3
    IL_009b:  ldloc.2
    IL_009c:  callvirt   instance class [NHibernate]NHibernate.Metadata.IClassMetadata NHibernate.Linq.Expressions.EntityExpression::get_MetaData()
    IL_00a1:  ldarg.2
    IL_00a2:  ldind.ref
    IL_00a3:  callvirt   instance class [NHibernate]NHibernate.Type.IType [NHibernate]NHibernate.Metadata.IClassMetadata::GetPropertyType(string)
    IL_00a8:  stind.ref
    IL_00a9:  ldloc.2
    IL_00aa:  stloc.3
    IL_00ab:  br.s       IL_00b1

    IL_00ad:  ldnull
    IL_00ae:  stloc.3
    IL_00af:  br.s       IL_00b1

    IL_00b1:  ldloc.3
    IL_00b2:  ret
  } // end of method AssociationVisitor::GetParentExpression

  .method private hidebysig instance string 
          AssociationPathForEntity(class [System.Core]System.Linq.Expressions.MemberExpression expr) cil managed
  {
    // Code size       128 (0x80)
    .maxstack  3
    .locals init (class NHibernate.Linq.Expressions.PropertyAccessExpression V_0,
             class NHibernate.Linq.Expressions.EntityExpression V_1,
             string V_2,
             bool V_3)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.MemberExpression::get_Expression()
    IL_0007:  isinst     NHibernate.Linq.Expressions.PropertyAccessExpression
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  ldnull
    IL_000f:  ceq
    IL_0011:  stloc.3
    IL_0012:  ldloc.3
    IL_0013:  brtrue.s   IL_0033

    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance string NHibernate.Linq.Expressions.PropertyAccessExpression::get_Name()
    IL_001b:  ldstr      "."
    IL_0020:  ldarg.1
    IL_0021:  callvirt   instance class [mscorlib]System.Reflection.MemberInfo [System.Core]System.Linq.Expressions.MemberExpression::get_Member()
    IL_0026:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_002b:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_0030:  stloc.2
    IL_0031:  br.s       IL_007e

    IL_0033:  ldarg.1
    IL_0034:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.MemberExpression::get_Expression()
    IL_0039:  isinst     NHibernate.Linq.Expressions.EntityExpression
    IL_003e:  stloc.1
    IL_003f:  ldloc.1
    IL_0040:  brfalse.s  IL_004d

    IL_0042:  ldloc.1
    IL_0043:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Expressions.EntityExpression::get_Expression()
    IL_0048:  ldnull
    IL_0049:  ceq
    IL_004b:  br.s       IL_004e

    IL_004d:  ldc.i4.1
    IL_004e:  stloc.3
    IL_004f:  ldloc.3
    IL_0050:  brtrue.s   IL_0070

    IL_0052:  ldloc.1
    IL_0053:  callvirt   instance string NHibernate.Linq.Expressions.EntityExpression::get_Alias()
    IL_0058:  ldstr      "."
    IL_005d:  ldarg.1
    IL_005e:  callvirt   instance class [mscorlib]System.Reflection.MemberInfo [System.Core]System.Linq.Expressions.MemberExpression::get_Member()
    IL_0063:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_0068:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_006d:  stloc.2
    IL_006e:  br.s       IL_007e

    IL_0070:  ldarg.1
    IL_0071:  callvirt   instance class [mscorlib]System.Reflection.MemberInfo [System.Core]System.Linq.Expressions.MemberExpression::get_Member()
    IL_0076:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_007b:  stloc.2
    IL_007c:  br.s       IL_007e

    IL_007e:  ldloc.2
    IL_007f:  ret
  } // end of method AssociationVisitor::AssociationPathForEntity

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitMemberAccess(class [System.Core]System.Linq.Expressions.MemberExpression expr) cil managed
  {
    // Code size       243 (0xf3)
    .maxstack  6
    .locals init (class [NHibernate]NHibernate.Metadata.IClassMetadata V_0,
             string V_1,
             string V_2,
             class [NHibernate]NHibernate.Type.IType V_3,
             class NHibernate.Linq.Expressions.EntityExpression V_4,
             class [NHibernate]NHibernate.Type.CollectionType V_5,
             class [NHibernate]NHibernate.Type.IType V_6,
             class [mscorlib]System.Type V_7,
             class [NHibernate]NHibernate.Metadata.IClassMetadata V_8,
             class NHibernate.Linq.Expressions.EntityExpression V_9,
             class [System.Core]System.Linq.Expressions.Expression V_10,
             bool V_11)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::VisitMemberAccess(class [System.Core]System.Linq.Expressions.MemberExpression)
    IL_0008:  castclass  [System.Core]System.Linq.Expressions.MemberExpression
    IL_000d:  starg.s    expr
    IL_000f:  ldarg.0
    IL_0010:  ldarg.1
    IL_0011:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_0016:  call       instance class [NHibernate]NHibernate.Metadata.IClassMetadata NHibernate.Linq.Visitors.AssociationVisitor::GetMetaData(class [mscorlib]System.Type)
    IL_001b:  stloc.0
    IL_001c:  ldloc.0
    IL_001d:  ldnull
    IL_001e:  ceq
    IL_0020:  stloc.s    V_11
    IL_0022:  ldloc.s    V_11
    IL_0024:  brtrue.s   IL_0054

    IL_0026:  nop
    IL_0027:  ldarg.0
    IL_0028:  ldarg.1
    IL_0029:  call       instance string NHibernate.Linq.Visitors.AssociationVisitor::AssociationPathForEntity(class [System.Core]System.Linq.Expressions.MemberExpression)
    IL_002e:  stloc.1
    IL_002f:  ldloc.1
    IL_0030:  ldarg.1
    IL_0031:  callvirt   instance class [mscorlib]System.Reflection.MemberInfo [System.Core]System.Linq.Expressions.MemberExpression::get_Member()
    IL_0036:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_003b:  ldarg.1
    IL_003c:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_0041:  ldloc.0
    IL_0042:  ldarg.1
    IL_0043:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.MemberExpression::get_Expression()
    IL_0048:  newobj     instance void NHibernate.Linq.Expressions.EntityExpression::.ctor(string,
                                                                                           string,
                                                                                           class [mscorlib]System.Type,
                                                                                           class [NHibernate]NHibernate.Metadata.IClassMetadata,
                                                                                           class [System.Core]System.Linq.Expressions.Expression)
    IL_004d:  stloc.s    V_10
    IL_004f:  br         IL_00f0

    IL_0054:  ldarg.0
    IL_0055:  ldarg.1
    IL_0056:  ldloca.s   V_2
    IL_0058:  ldloca.s   V_3
    IL_005a:  call       instance class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Visitors.AssociationVisitor::GetParentExpression(class [System.Core]System.Linq.Expressions.MemberExpression,
                                                                                                                                                      string&,
                                                                                                                                                      class [NHibernate]NHibernate.Type.IType&)
    IL_005f:  stloc.s    V_4
    IL_0061:  ldloc.s    V_4
    IL_0063:  ldnull
    IL_0064:  ceq
    IL_0066:  stloc.s    V_11
    IL_0068:  ldloc.s    V_11
    IL_006a:  brtrue.s   IL_00eb

    IL_006c:  nop
    IL_006d:  ldloc.3
    IL_006e:  callvirt   instance bool [NHibernate]NHibernate.Type.IType::get_IsCollectionType()
    IL_0073:  ldc.i4.0
    IL_0074:  ceq
    IL_0076:  stloc.s    V_11
    IL_0078:  ldloc.s    V_11
    IL_007a:  brtrue.s   IL_00d8

    IL_007c:  nop
    IL_007d:  ldloc.3
    IL_007e:  castclass  [NHibernate]NHibernate.Type.CollectionType
    IL_0083:  stloc.s    V_5
    IL_0085:  ldloc.s    V_5
    IL_0087:  ldarg.0
    IL_0088:  ldfld      class [NHibernate]NHibernate.Engine.ISessionFactoryImplementor NHibernate.Linq.Visitors.AssociationVisitor::_sessionFactory
    IL_008d:  callvirt   instance class [NHibernate]NHibernate.Type.IType [NHibernate]NHibernate.Type.CollectionType::GetElementType(class [NHibernate]NHibernate.Engine.ISessionFactoryImplementor)
    IL_0092:  stloc.s    V_6
    IL_0094:  ldloc.s    V_6
    IL_0096:  callvirt   instance class [mscorlib]System.Type [NHibernate]NHibernate.Type.IType::get_ReturnedClass()
    IL_009b:  stloc.s    V_7
    IL_009d:  ldarg.0
    IL_009e:  ldloc.s    V_7
    IL_00a0:  call       instance class [NHibernate]NHibernate.Metadata.IClassMetadata NHibernate.Linq.Visitors.AssociationVisitor::GetMetaData(class [mscorlib]System.Type)
    IL_00a5:  stloc.s    V_8
    IL_00a7:  ldnull
    IL_00a8:  stloc.s    V_9
    IL_00aa:  ldloc.s    V_8
    IL_00ac:  ldnull
    IL_00ad:  ceq
    IL_00af:  stloc.s    V_11
    IL_00b1:  ldloc.s    V_11
    IL_00b3:  brtrue.s   IL_00c3

    IL_00b5:  ldnull
    IL_00b6:  ldloc.2
    IL_00b7:  ldloc.s    V_7
    IL_00b9:  ldloc.s    V_8
    IL_00bb:  ldnull
    IL_00bc:  newobj     instance void NHibernate.Linq.Expressions.EntityExpression::.ctor(string,
                                                                                           string,
                                                                                           class [mscorlib]System.Type,
                                                                                           class [NHibernate]NHibernate.Metadata.IClassMetadata,
                                                                                           class [System.Core]System.Linq.Expressions.Expression)
    IL_00c1:  stloc.s    V_9
    IL_00c3:  ldloc.2
    IL_00c4:  ldarg.1
    IL_00c5:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_00ca:  ldloc.3
    IL_00cb:  ldloc.s    V_4
    IL_00cd:  ldloc.s    V_9
    IL_00cf:  newobj     instance void NHibernate.Linq.Expressions.CollectionAccessExpression::.ctor(string,
                                                                                                     class [mscorlib]System.Type,
                                                                                                     class [NHibernate]NHibernate.Type.IType,
                                                                                                     class NHibernate.Linq.Expressions.EntityExpression,
                                                                                                     class NHibernate.Linq.Expressions.EntityExpression)
    IL_00d4:  stloc.s    V_10
    IL_00d6:  br.s       IL_00f0

    IL_00d8:  ldloc.2
    IL_00d9:  ldarg.1
    IL_00da:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_00df:  ldloc.3
    IL_00e0:  ldloc.s    V_4
    IL_00e2:  newobj     instance void NHibernate.Linq.Expressions.PropertyAccessExpression::.ctor(string,
                                                                                                   class [mscorlib]System.Type,
                                                                                                   class [NHibernate]NHibernate.Type.IType,
                                                                                                   class NHibernate.Linq.Expressions.EntityExpression)
    IL_00e7:  stloc.s    V_10
    IL_00e9:  br.s       IL_00f0

    IL_00eb:  ldarg.1
    IL_00ec:  stloc.s    V_10
    IL_00ee:  br.s       IL_00f0

    IL_00f0:  ldloc.s    V_10
    IL_00f2:  ret
  } // end of method AssociationVisitor::VisitMemberAccess

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitParameter(class [System.Core]System.Linq.Expressions.ParameterExpression expr) cil managed
  {
    // Code size       81 (0x51)
    .maxstack  6
    .locals init (class [NHibernate]NHibernate.Metadata.IClassMetadata V_0,
             string V_1,
             class [System.Core]System.Linq.Expressions.Expression V_2,
             bool V_3)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_0008:  call       instance class [NHibernate]NHibernate.Metadata.IClassMetadata NHibernate.Linq.Visitors.AssociationVisitor::GetMetaData(class [mscorlib]System.Type)
    IL_000d:  stloc.0
    IL_000e:  ldloc.0
    IL_000f:  ldnull
    IL_0010:  ceq
    IL_0012:  stloc.3
    IL_0013:  ldloc.3
    IL_0014:  brtrue.s   IL_004b

    IL_0016:  nop
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class [mscorlib]System.Collections.Generic.IList`1<string> NHibernate.Linq.Visitors.AssociationVisitor::_associationPathsToInclude
    IL_001d:  ldarg.1
    IL_001e:  callvirt   instance string [System.Core]System.Linq.Expressions.ParameterExpression::get_Name()
    IL_0023:  callvirt   instance bool class [mscorlib]System.Collections.Generic.ICollection`1<string>::Contains(!0)
    IL_0028:  brtrue.s   IL_002d

    IL_002a:  ldnull
    IL_002b:  br.s       IL_0033

    IL_002d:  ldarg.1
    IL_002e:  callvirt   instance string [System.Core]System.Linq.Expressions.ParameterExpression::get_Name()
    IL_0033:  stloc.1
    IL_0034:  ldloc.1
    IL_0035:  ldarg.1
    IL_0036:  callvirt   instance string [System.Core]System.Linq.Expressions.ParameterExpression::get_Name()
    IL_003b:  ldarg.1
    IL_003c:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_0041:  ldloc.0
    IL_0042:  ldnull
    IL_0043:  newobj     instance void NHibernate.Linq.Expressions.EntityExpression::.ctor(string,
                                                                                           string,
                                                                                           class [mscorlib]System.Type,
                                                                                           class [NHibernate]NHibernate.Metadata.IClassMetadata,
                                                                                           class [System.Core]System.Linq.Expressions.Expression)
    IL_0048:  stloc.2
    IL_0049:  br.s       IL_004f

    IL_004b:  ldarg.1
    IL_004c:  stloc.2
    IL_004d:  br.s       IL_004f

    IL_004f:  ldloc.2
    IL_0050:  ret
  } // end of method AssociationVisitor::VisitParameter

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitConstant(class [System.Core]System.Linq.Expressions.ConstantExpression expr) cil managed
  {
    // Code size       42 (0x2a)
    .maxstack  3
    .locals init (class [System.Core]System.Linq.IQueryable V_0,
             class [System.Core]System.Linq.Expressions.Expression V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance object [System.Core]System.Linq.Expressions.ConstantExpression::get_Value()
    IL_0007:  isinst     [System.Core]System.Linq.IQueryable
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  ldnull
    IL_000f:  ceq
    IL_0011:  stloc.2
    IL_0012:  ldloc.2
    IL_0013:  brtrue.s   IL_0024

    IL_0015:  nop
    IL_0016:  ldstr      "this"
    IL_001b:  ldloc.0
    IL_001c:  newobj     instance void NHibernate.Linq.Expressions.QuerySourceExpression::.ctor(string,
                                                                                                class [System.Core]System.Linq.IQueryable)
    IL_0021:  stloc.1
    IL_0022:  br.s       IL_0028

    IL_0024:  ldarg.1
    IL_0025:  stloc.1
    IL_0026:  br.s       IL_0028

    IL_0028:  ldloc.1
    IL_0029:  ret
  } // end of method AssociationVisitor::VisitConstant

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitMethodCall(class [System.Core]System.Linq.Expressions.MethodCallExpression 'call') cil managed
  {
    // Code size       120 (0x78)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.LambdaExpression V_0,
             string V_1,
             class [System.Core]System.Linq.Expressions.Expression V_2,
             bool V_3)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [System.Core]System.Linq.Expressions.MethodCallExpression::get_Method()
    IL_0007:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_000c:  ldstr      "SelectMany"
    IL_0011:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_0016:  ldc.i4.0
    IL_0017:  ceq
    IL_0019:  stloc.3
    IL_001a:  ldloc.3
    IL_001b:  brtrue.s   IL_006c

    IL_001d:  nop
    IL_001e:  ldarg.1
    IL_001f:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0024:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Count()
    IL_0029:  ldc.i4.3
    IL_002a:  ceq
    IL_002c:  ldc.i4.0
    IL_002d:  ceq
    IL_002f:  stloc.3
    IL_0030:  ldloc.3
    IL_0031:  brtrue.s   IL_006b

    IL_0033:  nop
    IL_0034:  ldarg.1
    IL_0035:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_003a:  ldc.i4.2
    IL_003b:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_0040:  call       class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Util.LinqUtil::StripQuotes(class [System.Core]System.Linq.Expressions.Expression)
    IL_0045:  castclass  [System.Core]System.Linq.Expressions.LambdaExpression
    IL_004a:  stloc.0
    IL_004b:  ldloc.0
    IL_004c:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.ParameterExpression> [System.Core]System.Linq.Expressions.LambdaExpression::get_Parameters()
    IL_0051:  ldc.i4.1
    IL_0052:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.ParameterExpression>::get_Item(int32)
    IL_0057:  callvirt   instance string [System.Core]System.Linq.Expressions.ParameterExpression::get_Name()
    IL_005c:  stloc.1
    IL_005d:  ldarg.0
    IL_005e:  ldfld      class [mscorlib]System.Collections.Generic.IList`1<string> NHibernate.Linq.Visitors.AssociationVisitor::_associationPathsToInclude
    IL_0063:  ldloc.1
    IL_0064:  callvirt   instance void class [mscorlib]System.Collections.Generic.ICollection`1<string>::Add(!0)
    IL_0069:  nop
    IL_006a:  nop
    IL_006b:  nop
    IL_006c:  ldarg.0
    IL_006d:  ldarg.1
    IL_006e:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::VisitMethodCall(class [System.Core]System.Linq.Expressions.MethodCallExpression)
    IL_0073:  stloc.2
    IL_0074:  br.s       IL_0076

    IL_0076:  ldloc.2
    IL_0077:  ret
  } // end of method AssociationVisitor::VisitMethodCall

} // end of class NHibernate.Linq.Visitors.AssociationVisitor

.class public auto ansi beforefieldinit NHibernate.Linq.Visitors.BinaryBooleanReducer
       extends NHibernate.Linq.Visitors.ExpressionVisitor
{
  .class auto ansi nested private beforefieldinit BooleanConstantFinder
         extends NHibernate.Linq.Visitors.ExpressionVisitor
  {
    .field private bool _isNestedBinaryExpression
    .field private valuetype [mscorlib]System.Nullable`1<bool> '<Constant>k__BackingField'
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .method public hidebysig specialname 
            instance valuetype [mscorlib]System.Nullable`1<bool> 
            get_Constant() cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       11 (0xb)
      .maxstack  1
      .locals init (valuetype [mscorlib]System.Nullable`1<bool> V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      valuetype [mscorlib]System.Nullable`1<bool> NHibernate.Linq.Visitors.BinaryBooleanReducer/BooleanConstantFinder::'<Constant>k__BackingField'
      IL_0006:  stloc.0
      IL_0007:  br.s       IL_0009

      IL_0009:  ldloc.0
      IL_000a:  ret
    } // end of method BooleanConstantFinder::get_Constant

    .method private hidebysig specialname 
            instance void  set_Constant(valuetype [mscorlib]System.Nullable`1<bool> 'value') cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldarg.1
      IL_0002:  stfld      valuetype [mscorlib]System.Nullable`1<bool> NHibernate.Linq.Visitors.BinaryBooleanReducer/BooleanConstantFinder::'<Constant>k__BackingField'
      IL_0007:  ret
    } // end of method BooleanConstantFinder::set_Constant

    .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
            VisitConstant(class [System.Core]System.Linq.Expressions.ConstantExpression c) cil managed
    {
      // Code size       61 (0x3d)
      .maxstack  3
      .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
               bool V_1)
      IL_0000:  nop
      IL_0001:  ldarg.1
      IL_0002:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
      IL_0007:  ldtoken    [mscorlib]System.Boolean
      IL_000c:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
      IL_0011:  bne.un.s   IL_001b

      IL_0013:  ldarg.0
      IL_0014:  ldfld      bool NHibernate.Linq.Visitors.BinaryBooleanReducer/BooleanConstantFinder::_isNestedBinaryExpression
      IL_0019:  br.s       IL_001c

      IL_001b:  ldc.i4.1
      IL_001c:  stloc.1
      IL_001d:  ldloc.1
      IL_001e:  brtrue.s   IL_0037

      IL_0020:  ldarg.0
      IL_0021:  ldarg.1
      IL_0022:  callvirt   instance object [System.Core]System.Linq.Expressions.ConstantExpression::get_Value()
      IL_0027:  unbox.any  [mscorlib]System.Boolean
      IL_002c:  newobj     instance void valuetype [mscorlib]System.Nullable`1<bool>::.ctor(!0)
      IL_0031:  call       instance void NHibernate.Linq.Visitors.BinaryBooleanReducer/BooleanConstantFinder::set_Constant(valuetype [mscorlib]System.Nullable`1<bool>)
      IL_0036:  nop
      IL_0037:  ldarg.1
      IL_0038:  stloc.0
      IL_0039:  br.s       IL_003b

      IL_003b:  ldloc.0
      IL_003c:  ret
    } // end of method BooleanConstantFinder::VisitConstant

    .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
            VisitBinary(class [System.Core]System.Linq.Expressions.BinaryExpression b) cil managed
    {
      // Code size       14 (0xe)
      .maxstack  2
      .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  ldc.i4.1
      IL_0003:  stfld      bool NHibernate.Linq.Visitors.BinaryBooleanReducer/BooleanConstantFinder::_isNestedBinaryExpression
      IL_0008:  ldarg.1
      IL_0009:  stloc.0
      IL_000a:  br.s       IL_000c

      IL_000c:  ldloc.0
      IL_000d:  ret
    } // end of method BooleanConstantFinder::VisitBinary

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void NHibernate.Linq.Visitors.ExpressionVisitor::.ctor()
      IL_0006:  ret
    } // end of method BooleanConstantFinder::.ctor

    .property instance valuetype [mscorlib]System.Nullable`1<bool>
            Constant()
    {
      .set instance void NHibernate.Linq.Visitors.BinaryBooleanReducer/BooleanConstantFinder::set_Constant(valuetype [mscorlib]System.Nullable`1<bool>)
      .get instance valuetype [mscorlib]System.Nullable`1<bool> NHibernate.Linq.Visitors.BinaryBooleanReducer/BooleanConstantFinder::get_Constant()
    } // end of property BooleanConstantFinder::Constant
  } // end of class BooleanConstantFinder

  .method private hidebysig instance class [System.Core]System.Linq.Expressions.Expression 
          ProcessBinaryExpression(class [System.Core]System.Linq.Expressions.Expression exprToCompare,
                                  class [System.Core]System.Linq.Expressions.Expression exprToReturn,
                                  valuetype [System.Core]System.Linq.Expressions.ExpressionType nodeType,
                                  class [System.Core]System.Linq.Expressions.Expression original) cil managed
  {
    // Code size       224 (0xe0)
    .maxstack  2
    .locals init (class NHibernate.Linq.Visitors.BinaryBooleanReducer/BooleanConstantFinder V_0,
             class [System.Core]System.Linq.Expressions.Expression V_1,
             valuetype [mscorlib]System.Nullable`1<bool> V_2,
             bool V_3,
             valuetype [System.Core]System.Linq.Expressions.ExpressionType V_4)
    IL_0000:  nop
    IL_0001:  newobj     instance void NHibernate.Linq.Visitors.BinaryBooleanReducer/BooleanConstantFinder::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.1
    IL_0009:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_000e:  pop
    IL_000f:  ldloc.0
    IL_0010:  callvirt   instance valuetype [mscorlib]System.Nullable`1<bool> NHibernate.Linq.Visitors.BinaryBooleanReducer/BooleanConstantFinder::get_Constant()
    IL_0015:  stloc.2
    IL_0016:  ldloca.s   V_2
    IL_0018:  call       instance bool valuetype [mscorlib]System.Nullable`1<bool>::get_HasValue()
    IL_001d:  ldc.i4.0
    IL_001e:  ceq
    IL_0020:  stloc.3
    IL_0021:  ldloc.3
    IL_0022:  brtrue     IL_00d9

    IL_0027:  nop
    IL_0028:  ldarg.3
    IL_0029:  stloc.s    V_4
    IL_002b:  ldloc.s    V_4
    IL_002d:  ldc.i4.2
    IL_002e:  sub
    IL_002f:  switch     ( 
                          IL_00b3,
                          IL_00b3)
    IL_003c:  ldloc.s    V_4
    IL_003e:  ldc.i4.s   13
    IL_0040:  beq.s      IL_005a

    IL_0042:  ldloc.s    V_4
    IL_0044:  ldc.i4.s   35
    IL_0046:  sub
    IL_0047:  switch     ( 
                          IL_0076,
                          IL_0092,
                          IL_0092)
    IL_0058:  br.s       IL_00d4

    IL_005a:  ldloc.0
    IL_005b:  callvirt   instance valuetype [mscorlib]System.Nullable`1<bool> NHibernate.Linq.Visitors.BinaryBooleanReducer/BooleanConstantFinder::get_Constant()
    IL_0060:  stloc.2
    IL_0061:  ldloca.s   V_2
    IL_0063:  call       instance !0 valuetype [mscorlib]System.Nullable`1<bool>::get_Value()
    IL_0068:  brtrue.s   IL_0072

    IL_006a:  ldarg.2
    IL_006b:  call       class [System.Core]System.Linq.Expressions.UnaryExpression [System.Core]System.Linq.Expressions.Expression::Not(class [System.Core]System.Linq.Expressions.Expression)
    IL_0070:  br.s       IL_0073

    IL_0072:  ldarg.2
    IL_0073:  stloc.1
    IL_0074:  br.s       IL_00de

    IL_0076:  ldloc.0
    IL_0077:  callvirt   instance valuetype [mscorlib]System.Nullable`1<bool> NHibernate.Linq.Visitors.BinaryBooleanReducer/BooleanConstantFinder::get_Constant()
    IL_007c:  stloc.2
    IL_007d:  ldloca.s   V_2
    IL_007f:  call       instance !0 valuetype [mscorlib]System.Nullable`1<bool>::get_Value()
    IL_0084:  brtrue.s   IL_0089

    IL_0086:  ldarg.2
    IL_0087:  br.s       IL_008f

    IL_0089:  ldarg.2
    IL_008a:  call       class [System.Core]System.Linq.Expressions.UnaryExpression [System.Core]System.Linq.Expressions.Expression::Not(class [System.Core]System.Linq.Expressions.Expression)
    IL_008f:  stloc.1
    IL_0090:  br.s       IL_00de

    IL_0092:  ldloc.0
    IL_0093:  callvirt   instance valuetype [mscorlib]System.Nullable`1<bool> NHibernate.Linq.Visitors.BinaryBooleanReducer/BooleanConstantFinder::get_Constant()
    IL_0098:  stloc.2
    IL_0099:  ldloca.s   V_2
    IL_009b:  call       instance !0 valuetype [mscorlib]System.Nullable`1<bool>::get_Value()
    IL_00a0:  brtrue.s   IL_00a5

    IL_00a2:  ldarg.2
    IL_00a3:  br.s       IL_00b0

    IL_00a5:  ldc.i4.1
    IL_00a6:  box        [mscorlib]System.Boolean
    IL_00ab:  call       class [System.Core]System.Linq.Expressions.ConstantExpression [System.Core]System.Linq.Expressions.Expression::Constant(object)
    IL_00b0:  stloc.1
    IL_00b1:  br.s       IL_00de

    IL_00b3:  ldloc.0
    IL_00b4:  callvirt   instance valuetype [mscorlib]System.Nullable`1<bool> NHibernate.Linq.Visitors.BinaryBooleanReducer/BooleanConstantFinder::get_Constant()
    IL_00b9:  stloc.2
    IL_00ba:  ldloca.s   V_2
    IL_00bc:  call       instance !0 valuetype [mscorlib]System.Nullable`1<bool>::get_Value()
    IL_00c1:  brtrue.s   IL_00d0

    IL_00c3:  ldc.i4.0
    IL_00c4:  box        [mscorlib]System.Boolean
    IL_00c9:  call       class [System.Core]System.Linq.Expressions.ConstantExpression [System.Core]System.Linq.Expressions.Expression::Constant(object)
    IL_00ce:  br.s       IL_00d1

    IL_00d0:  ldarg.2
    IL_00d1:  stloc.1
    IL_00d2:  br.s       IL_00de

    IL_00d4:  ldarg.s    original
    IL_00d6:  stloc.1
    IL_00d7:  br.s       IL_00de

    IL_00d9:  ldarg.s    original
    IL_00db:  stloc.1
    IL_00dc:  br.s       IL_00de

    IL_00de:  ldloc.1
    IL_00df:  ret
  } // end of method BinaryBooleanReducer::ProcessBinaryExpression

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitBinary(class [System.Core]System.Linq.Expressions.BinaryExpression expr) cil managed
  {
    // Code size       89 (0x59)
    .maxstack  5
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             class [System.Core]System.Linq.Expressions.Expression V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.BinaryExpression::get_Left()
    IL_0008:  ldarg.1
    IL_0009:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.BinaryExpression::get_Right()
    IL_000e:  ldarg.1
    IL_000f:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.ExpressionType [System.Core]System.Linq.Expressions.Expression::get_NodeType()
    IL_0014:  ldarg.1
    IL_0015:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.BinaryBooleanReducer::ProcessBinaryExpression(class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                                               class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                                               valuetype [System.Core]System.Linq.Expressions.ExpressionType,
                                                                                                                                                               class [System.Core]System.Linq.Expressions.Expression)
    IL_001a:  stloc.0
    IL_001b:  ldloc.0
    IL_001c:  ldarg.1
    IL_001d:  ceq
    IL_001f:  stloc.2
    IL_0020:  ldloc.2
    IL_0021:  brtrue.s   IL_0027

    IL_0023:  ldloc.0
    IL_0024:  stloc.1
    IL_0025:  br.s       IL_0057

    IL_0027:  ldarg.0
    IL_0028:  ldarg.1
    IL_0029:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.BinaryExpression::get_Right()
    IL_002e:  ldarg.1
    IL_002f:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.BinaryExpression::get_Left()
    IL_0034:  ldarg.1
    IL_0035:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.ExpressionType [System.Core]System.Linq.Expressions.Expression::get_NodeType()
    IL_003a:  ldarg.1
    IL_003b:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.BinaryBooleanReducer::ProcessBinaryExpression(class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                                               class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                                               valuetype [System.Core]System.Linq.Expressions.ExpressionType,
                                                                                                                                                               class [System.Core]System.Linq.Expressions.Expression)
    IL_0040:  stloc.0
    IL_0041:  ldloc.0
    IL_0042:  ldarg.1
    IL_0043:  ceq
    IL_0045:  stloc.2
    IL_0046:  ldloc.2
    IL_0047:  brtrue.s   IL_004d

    IL_0049:  ldloc.0
    IL_004a:  stloc.1
    IL_004b:  br.s       IL_0057

    IL_004d:  ldarg.0
    IL_004e:  ldarg.1
    IL_004f:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::VisitBinary(class [System.Core]System.Linq.Expressions.BinaryExpression)
    IL_0054:  stloc.1
    IL_0055:  br.s       IL_0057

    IL_0057:  ldloc.1
    IL_0058:  ret
  } // end of method BinaryBooleanReducer::VisitBinary

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void NHibernate.Linq.Visitors.ExpressionVisitor::.ctor()
    IL_0006:  ret
  } // end of method BinaryBooleanReducer::.ctor

} // end of class NHibernate.Linq.Visitors.BinaryBooleanReducer

.class public auto ansi sealed NHibernate.Linq.Visitors.ComparePropToProp
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method ComparePropToProp::.ctor

  .method public hidebysig newslot virtual 
          instance class [NHibernate]NHibernate.Criterion.ICriterion 
          Invoke(string propertyName,
                 string otherPropertyName) runtime managed
  {
  } // end of method ComparePropToProp::Invoke

  .method public hidebysig newslot virtual 
          instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(string propertyName,
                      string otherPropertyName,
                      class [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method ComparePropToProp::BeginInvoke

  .method public hidebysig newslot virtual 
          instance class [NHibernate]NHibernate.Criterion.ICriterion 
          EndInvoke(class [mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method ComparePropToProp::EndInvoke

} // end of class NHibernate.Linq.Visitors.ComparePropToProp

.class public auto ansi sealed NHibernate.Linq.Visitors.ComparePropToValue
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method ComparePropToValue::.ctor

  .method public hidebysig newslot virtual 
          instance class [NHibernate]NHibernate.Criterion.ICriterion 
          Invoke(string propertyName,
                 object 'value') runtime managed
  {
  } // end of method ComparePropToValue::Invoke

  .method public hidebysig newslot virtual 
          instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(string propertyName,
                      object 'value',
                      class [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method ComparePropToValue::BeginInvoke

  .method public hidebysig newslot virtual 
          instance class [NHibernate]NHibernate.Criterion.ICriterion 
          EndInvoke(class [mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method ComparePropToValue::EndInvoke

} // end of class NHibernate.Linq.Visitors.ComparePropToValue

.class public auto ansi sealed NHibernate.Linq.Visitors.CompareValueToCriteria
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method CompareValueToCriteria::.ctor

  .method public hidebysig newslot virtual 
          instance class [NHibernate]NHibernate.Criterion.ICriterion 
          Invoke(object 'value',
                 class [NHibernate]NHibernate.Criterion.DetachedCriteria criteria) runtime managed
  {
  } // end of method CompareValueToCriteria::Invoke

  .method public hidebysig newslot virtual 
          instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(object 'value',
                      class [NHibernate]NHibernate.Criterion.DetachedCriteria criteria,
                      class [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method CompareValueToCriteria::BeginInvoke

  .method public hidebysig newslot virtual 
          instance class [NHibernate]NHibernate.Criterion.ICriterion 
          EndInvoke(class [mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method CompareValueToCriteria::EndInvoke

} // end of class NHibernate.Linq.Visitors.CompareValueToCriteria

.class public auto ansi sealed NHibernate.Linq.Visitors.ComparePropToCriteria
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method ComparePropToCriteria::.ctor

  .method public hidebysig newslot virtual 
          instance class [NHibernate]NHibernate.Criterion.ICriterion 
          Invoke(string propertyName,
                 class [NHibernate]NHibernate.Criterion.DetachedCriteria criteria) runtime managed
  {
  } // end of method ComparePropToCriteria::Invoke

  .method public hidebysig newslot virtual 
          instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(string propertyName,
                      class [NHibernate]NHibernate.Criterion.DetachedCriteria criteria,
                      class [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method ComparePropToCriteria::BeginInvoke

  .method public hidebysig newslot virtual 
          instance class [NHibernate]NHibernate.Criterion.ICriterion 
          EndInvoke(class [mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method ComparePropToCriteria::EndInvoke

} // end of class NHibernate.Linq.Visitors.ComparePropToCriteria

.class public auto ansi sealed NHibernate.Linq.Visitors.BinaryCriterionType
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype NHibernate.Linq.Visitors.BinaryCriterionType None = int32(0x00000000)
  .field public static literal valuetype NHibernate.Linq.Visitors.BinaryCriterionType Value = int32(0x00000001)
  .field public static literal valuetype NHibernate.Linq.Visitors.BinaryCriterionType Property = int32(0x00000002)
  .field public static literal valuetype NHibernate.Linq.Visitors.BinaryCriterionType Criteria = int32(0x00000003)
} // end of class NHibernate.Linq.Visitors.BinaryCriterionType

.class public auto ansi beforefieldinit NHibernate.Linq.Visitors.NHibernateExpressionVisitor
       extends NHibernate.Linq.Visitors.ExpressionVisitor
{
  .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          Visit(class [System.Core]System.Linq.Expressions.Expression exp) cil managed
  {
    // Code size       129 (0x81)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             bool V_1,
             valuetype NHibernate.Linq.Expressions.NHibernateExpressionType V_2)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  ldnull
    IL_0003:  ceq
    IL_0005:  ldc.i4.0
    IL_0006:  ceq
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  brtrue.s   IL_0010

    IL_000c:  ldnull
    IL_000d:  stloc.0
    IL_000e:  br.s       IL_007f

    IL_0010:  ldarg.1
    IL_0011:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.ExpressionType [System.Core]System.Linq.Expressions.Expression::get_NodeType()
    IL_0016:  stloc.2
    IL_0017:  ldloc.2
    IL_0018:  ldc.i4     0x3e8
    IL_001d:  sub
    IL_001e:  switch     ( 
                          IL_0039,
                          IL_0048,
                          IL_0048,
                          IL_0057,
                          IL_0066)
    IL_0037:  br.s       IL_0075

    IL_0039:  ldarg.0
    IL_003a:  ldarg.1
    IL_003b:  castclass  NHibernate.Linq.Expressions.QuerySourceExpression
    IL_0040:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.NHibernateExpressionVisitor::VisitQuerySource(class NHibernate.Linq.Expressions.QuerySourceExpression)
    IL_0045:  stloc.0
    IL_0046:  br.s       IL_007f

    IL_0048:  ldarg.0
    IL_0049:  ldarg.1
    IL_004a:  castclass  NHibernate.Linq.Expressions.EntityExpression
    IL_004f:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.NHibernateExpressionVisitor::VisitEntity(class NHibernate.Linq.Expressions.EntityExpression)
    IL_0054:  stloc.0
    IL_0055:  br.s       IL_007f

    IL_0057:  ldarg.0
    IL_0058:  ldarg.1
    IL_0059:  castclass  NHibernate.Linq.Expressions.PropertyAccessExpression
    IL_005e:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.NHibernateExpressionVisitor::VisitPropertyAccess(class NHibernate.Linq.Expressions.PropertyAccessExpression)
    IL_0063:  stloc.0
    IL_0064:  br.s       IL_007f

    IL_0066:  ldarg.0
    IL_0067:  ldarg.1
    IL_0068:  castclass  NHibernate.Linq.Expressions.CollectionAccessExpression
    IL_006d:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.NHibernateExpressionVisitor::VisitCollectionAccess(class NHibernate.Linq.Expressions.CollectionAccessExpression)
    IL_0072:  stloc.0
    IL_0073:  br.s       IL_007f

    IL_0075:  ldarg.0
    IL_0076:  ldarg.1
    IL_0077:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_007c:  stloc.0
    IL_007d:  br.s       IL_007f

    IL_007f:  ldloc.0
    IL_0080:  ret
  } // end of method NHibernateExpressionVisitor::Visit

  .method family hidebysig newslot virtual 
          instance class [System.Core]System.Linq.Expressions.Expression 
          VisitQuerySource(class NHibernate.Linq.Expressions.QuerySourceExpression expr) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method NHibernateExpressionVisitor::VisitQuerySource

  .method family hidebysig newslot virtual 
          instance class [System.Core]System.Linq.Expressions.Expression 
          VisitEntity(class NHibernate.Linq.Expressions.EntityExpression expr) cil managed
  {
    // Code size       67 (0x43)
    .maxstack  6
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             class [System.Core]System.Linq.Expressions.Expression V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Expressions.EntityExpression::get_Expression()
    IL_0008:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_000d:  stloc.0
    IL_000e:  ldloc.0
    IL_000f:  ldarg.1
    IL_0010:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Expressions.EntityExpression::get_Expression()
    IL_0015:  ceq
    IL_0017:  stloc.2
    IL_0018:  ldloc.2
    IL_0019:  brtrue.s   IL_003d

    IL_001b:  nop
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance string NHibernate.Linq.Expressions.EntityExpression::get_AssociationPath()
    IL_0022:  ldarg.1
    IL_0023:  callvirt   instance string NHibernate.Linq.Expressions.EntityExpression::get_Alias()
    IL_0028:  ldarg.1
    IL_0029:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_002e:  ldarg.1
    IL_002f:  callvirt   instance class [NHibernate]NHibernate.Metadata.IClassMetadata NHibernate.Linq.Expressions.EntityExpression::get_MetaData()
    IL_0034:  ldloc.0
    IL_0035:  newobj     instance void NHibernate.Linq.Expressions.EntityExpression::.ctor(string,
                                                                                           string,
                                                                                           class [mscorlib]System.Type,
                                                                                           class [NHibernate]NHibernate.Metadata.IClassMetadata,
                                                                                           class [System.Core]System.Linq.Expressions.Expression)
    IL_003a:  stloc.1
    IL_003b:  br.s       IL_0041

    IL_003d:  ldarg.1
    IL_003e:  stloc.1
    IL_003f:  br.s       IL_0041

    IL_0041:  ldloc.1
    IL_0042:  ret
  } // end of method NHibernateExpressionVisitor::VisitEntity

  .method family hidebysig newslot virtual 
          instance class [System.Core]System.Linq.Expressions.Expression 
          VisitPropertyAccess(class NHibernate.Linq.Expressions.PropertyAccessExpression expr) cil managed
  {
    // Code size       66 (0x42)
    .maxstack  5
    .locals init (class NHibernate.Linq.Expressions.EntityExpression V_0,
             class [System.Core]System.Linq.Expressions.Expression V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Expressions.PropertyAccessExpression::get_Expression()
    IL_0008:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_000d:  castclass  NHibernate.Linq.Expressions.EntityExpression
    IL_0012:  stloc.0
    IL_0013:  ldloc.0
    IL_0014:  ldarg.1
    IL_0015:  callvirt   instance class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Expressions.PropertyAccessExpression::get_Expression()
    IL_001a:  ceq
    IL_001c:  stloc.2
    IL_001d:  ldloc.2
    IL_001e:  brtrue.s   IL_003c

    IL_0020:  nop
    IL_0021:  ldarg.1
    IL_0022:  callvirt   instance string NHibernate.Linq.Expressions.PropertyAccessExpression::get_Name()
    IL_0027:  ldarg.1
    IL_0028:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_002d:  ldarg.1
    IL_002e:  callvirt   instance class [NHibernate]NHibernate.Type.IType NHibernate.Linq.Expressions.PropertyAccessExpression::get_NHibernateType()
    IL_0033:  ldloc.0
    IL_0034:  newobj     instance void NHibernate.Linq.Expressions.PropertyAccessExpression::.ctor(string,
                                                                                                   class [mscorlib]System.Type,
                                                                                                   class [NHibernate]NHibernate.Type.IType,
                                                                                                   class NHibernate.Linq.Expressions.EntityExpression)
    IL_0039:  stloc.1
    IL_003a:  br.s       IL_0040

    IL_003c:  ldarg.1
    IL_003d:  stloc.1
    IL_003e:  br.s       IL_0040

    IL_0040:  ldloc.1
    IL_0041:  ret
  } // end of method NHibernateExpressionVisitor::VisitPropertyAccess

  .method family hidebysig newslot virtual 
          instance class [System.Core]System.Linq.Expressions.Expression 
          VisitCollectionAccess(class NHibernate.Linq.Expressions.CollectionAccessExpression expr) cil managed
  {
    // Code size       72 (0x48)
    .maxstack  6
    .locals init (class NHibernate.Linq.Expressions.EntityExpression V_0,
             class [System.Core]System.Linq.Expressions.Expression V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Expressions.PropertyAccessExpression::get_Expression()
    IL_0008:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_000d:  castclass  NHibernate.Linq.Expressions.EntityExpression
    IL_0012:  stloc.0
    IL_0013:  ldloc.0
    IL_0014:  ldarg.1
    IL_0015:  callvirt   instance class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Expressions.PropertyAccessExpression::get_Expression()
    IL_001a:  ceq
    IL_001c:  stloc.2
    IL_001d:  ldloc.2
    IL_001e:  brtrue.s   IL_0042

    IL_0020:  nop
    IL_0021:  ldarg.1
    IL_0022:  callvirt   instance string NHibernate.Linq.Expressions.PropertyAccessExpression::get_Name()
    IL_0027:  ldarg.1
    IL_0028:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_002d:  ldarg.1
    IL_002e:  callvirt   instance class [NHibernate]NHibernate.Type.IType NHibernate.Linq.Expressions.PropertyAccessExpression::get_NHibernateType()
    IL_0033:  ldloc.0
    IL_0034:  ldarg.1
    IL_0035:  callvirt   instance class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Expressions.CollectionAccessExpression::get_ElementExpression()
    IL_003a:  newobj     instance void NHibernate.Linq.Expressions.CollectionAccessExpression::.ctor(string,
                                                                                                     class [mscorlib]System.Type,
                                                                                                     class [NHibernate]NHibernate.Type.IType,
                                                                                                     class NHibernate.Linq.Expressions.EntityExpression,
                                                                                                     class NHibernate.Linq.Expressions.EntityExpression)
    IL_003f:  stloc.1
    IL_0040:  br.s       IL_0046

    IL_0042:  ldarg.1
    IL_0043:  stloc.1
    IL_0044:  br.s       IL_0046

    IL_0046:  ldloc.1
    IL_0047:  ret
  } // end of method NHibernateExpressionVisitor::VisitCollectionAccess

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void NHibernate.Linq.Visitors.ExpressionVisitor::.ctor()
    IL_0006:  ret
  } // end of method NHibernateExpressionVisitor::.ctor

} // end of class NHibernate.Linq.Visitors.NHibernateExpressionVisitor

.class public auto ansi beforefieldinit NHibernate.Linq.Visitors.BinaryCriterionVisitor
       extends NHibernate.Linq.Visitors.NHibernateExpressionVisitor
{
  .field private initonly class [NHibernate]NHibernate.ICriteria rootCriteria
  .field private initonly class [NHibernate]NHibernate.ISession session
  .field private class [mscorlib]System.Type '<ConvertTo>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype NHibernate.Linq.Visitors.BinaryCriterionType '<Type>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private object '<Value>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<Name>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [NHibernate]NHibernate.Criterion.DetachedCriteria '<Criteria>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [NHibernate]NHibernate.ICriteria rootCriteria,
                               class [NHibernate]NHibernate.ISession session) cil managed
  {
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void NHibernate.Linq.Visitors.NHibernateExpressionVisitor::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.BinaryCriterionVisitor::rootCriteria
    IL_000f:  ldarg.0
    IL_0010:  ldarg.2
    IL_0011:  stfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.BinaryCriterionVisitor::session
    IL_0016:  nop
    IL_0017:  ret
  } // end of method BinaryCriterionVisitor::.ctor

  .method public hidebysig specialname instance class [mscorlib]System.Type 
          get_ConvertTo() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       11 (0xb)
    .maxstack  1
    .locals init (class [mscorlib]System.Type V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Type NHibernate.Linq.Visitors.BinaryCriterionVisitor::'<ConvertTo>k__BackingField'
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method BinaryCriterionVisitor::get_ConvertTo

  .method private hidebysig specialname instance void 
          set_ConvertTo(class [mscorlib]System.Type 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [mscorlib]System.Type NHibernate.Linq.Visitors.BinaryCriterionVisitor::'<ConvertTo>k__BackingField'
    IL_0007:  ret
  } // end of method BinaryCriterionVisitor::set_ConvertTo

  .method public hidebysig specialname instance valuetype NHibernate.Linq.Visitors.BinaryCriterionType 
          get_Type() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       11 (0xb)
    .maxstack  1
    .locals init (valuetype NHibernate.Linq.Visitors.BinaryCriterionType V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype NHibernate.Linq.Visitors.BinaryCriterionType NHibernate.Linq.Visitors.BinaryCriterionVisitor::'<Type>k__BackingField'
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method BinaryCriterionVisitor::get_Type

  .method private hidebysig specialname instance void 
          set_Type(valuetype NHibernate.Linq.Visitors.BinaryCriterionType 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype NHibernate.Linq.Visitors.BinaryCriterionType NHibernate.Linq.Visitors.BinaryCriterionVisitor::'<Type>k__BackingField'
    IL_0007:  ret
  } // end of method BinaryCriterionVisitor::set_Type

  .method public hidebysig specialname instance object 
          get_Value() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       11 (0xb)
    .maxstack  1
    .locals init (object V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      object NHibernate.Linq.Visitors.BinaryCriterionVisitor::'<Value>k__BackingField'
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method BinaryCriterionVisitor::get_Value

  .method private hidebysig specialname instance void 
          set_Value(object 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      object NHibernate.Linq.Visitors.BinaryCriterionVisitor::'<Value>k__BackingField'
    IL_0007:  ret
  } // end of method BinaryCriterionVisitor::set_Value

  .method public hidebysig specialname instance string 
          get_Name() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       11 (0xb)
    .maxstack  1
    .locals init (string V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string NHibernate.Linq.Visitors.BinaryCriterionVisitor::'<Name>k__BackingField'
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method BinaryCriterionVisitor::get_Name

  .method private hidebysig specialname instance void 
          set_Name(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string NHibernate.Linq.Visitors.BinaryCriterionVisitor::'<Name>k__BackingField'
    IL_0007:  ret
  } // end of method BinaryCriterionVisitor::set_Name

  .method public hidebysig specialname instance class [NHibernate]NHibernate.Criterion.DetachedCriteria 
          get_Criteria() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       11 (0xb)
    .maxstack  1
    .locals init (class [NHibernate]NHibernate.Criterion.DetachedCriteria V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Visitors.BinaryCriterionVisitor::'<Criteria>k__BackingField'
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method BinaryCriterionVisitor::get_Criteria

  .method private hidebysig specialname instance void 
          set_Criteria(class [NHibernate]NHibernate.Criterion.DetachedCriteria 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Visitors.BinaryCriterionVisitor::'<Criteria>k__BackingField'
    IL_0007:  ret
  } // end of method BinaryCriterionVisitor::set_Criteria

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitMethodCall(class [System.Core]System.Linq.Expressions.MethodCallExpression expr) cil managed
  {
    // Code size       162 (0xa2)
    .maxstack  4
    .locals init (class NHibernate.Linq.Expressions.EntityExpression V_0,
             string V_1,
             class NHibernate.Linq.Visitors.RootVisitor V_2,
             class [System.Core]System.Linq.Expressions.Expression V_3,
             bool V_4)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4.3
    IL_0003:  call       instance void NHibernate.Linq.Visitors.BinaryCriterionVisitor::set_Type(valuetype NHibernate.Linq.Visitors.BinaryCriterionType)
    IL_0008:  nop
    IL_0009:  ldarg.0
    IL_000a:  ldarg.0
    IL_000b:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.BinaryCriterionVisitor::rootCriteria
    IL_0010:  call       string NHibernate.Linq.Util.CriteriaUtil::GetEntityOrClassName(class [NHibernate]NHibernate.ICriteria)
    IL_0015:  ldstr      "sub"
    IL_001a:  call       class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::ForEntityName(string,
                                                                                                                                                  string)
    IL_001f:  call       instance void NHibernate.Linq.Visitors.BinaryCriterionVisitor::set_Criteria(class [NHibernate]NHibernate.Criterion.DetachedCriteria)
    IL_0024:  nop
    IL_0025:  ldarg.1
    IL_0026:  call       class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Visitors.EntityExpressionVisitor::RootEntity(class [System.Core]System.Linq.Expressions.Expression)
    IL_002b:  stloc.0
    IL_002c:  ldloc.0
    IL_002d:  ldnull
    IL_002e:  ceq
    IL_0030:  stloc.s    V_4
    IL_0032:  ldloc.s    V_4
    IL_0034:  brtrue.s   IL_0076

    IL_0036:  nop
    IL_0037:  ldloc.0
    IL_0038:  callvirt   instance class [NHibernate]NHibernate.Metadata.IClassMetadata NHibernate.Linq.Expressions.EntityExpression::get_MetaData()
    IL_003d:  callvirt   instance string [NHibernate]NHibernate.Metadata.IClassMetadata::get_IdentifierPropertyName()
    IL_0042:  stloc.1
    IL_0043:  ldarg.0
    IL_0044:  call       instance class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Visitors.BinaryCriterionVisitor::get_Criteria()
    IL_0049:  ldarg.0
    IL_004a:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.BinaryCriterionVisitor::rootCriteria
    IL_004f:  callvirt   instance string [NHibernate]NHibernate.ICriteria::get_Alias()
    IL_0054:  ldstr      "."
    IL_0059:  ldloc.1
    IL_005a:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_005f:  ldstr      "sub."
    IL_0064:  ldloc.1
    IL_0065:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_006a:  call       class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Restrictions::EqProperty(string,
                                                                                                                                            string)
    IL_006f:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::Add(class [NHibernate]NHibernate.Criterion.ICriterion)
    IL_0074:  pop
    IL_0075:  nop
    IL_0076:  ldarg.0
    IL_0077:  call       instance class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Visitors.BinaryCriterionVisitor::get_Criteria()
    IL_007c:  ldarg.0
    IL_007d:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.BinaryCriterionVisitor::session
    IL_0082:  call       class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Util.DetachedCriteriaExtensions::Adapt(class [NHibernate]NHibernate.Criterion.DetachedCriteria,
                                                                                                                       class [NHibernate]NHibernate.ISession)
    IL_0087:  ldarg.0
    IL_0088:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.BinaryCriterionVisitor::session
    IL_008d:  ldc.i4.0
    IL_008e:  newobj     instance void NHibernate.Linq.Visitors.RootVisitor::.ctor(class [NHibernate]NHibernate.ICriteria,
                                                                                   class [NHibernate]NHibernate.ISession,
                                                                                   bool)
    IL_0093:  stloc.2
    IL_0094:  ldloc.2
    IL_0095:  ldarg.1
    IL_0096:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_009b:  pop
    IL_009c:  ldarg.1
    IL_009d:  stloc.3
    IL_009e:  br.s       IL_00a0

    IL_00a0:  ldloc.3
    IL_00a1:  ret
  } // end of method BinaryCriterionVisitor::VisitMethodCall

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitMemberAccess(class [System.Core]System.Linq.Expressions.MemberExpression expr) cil managed
  {
    // Code size       33 (0x21)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4.2
    IL_0003:  call       instance void NHibernate.Linq.Visitors.BinaryCriterionVisitor::set_Type(valuetype NHibernate.Linq.Visitors.BinaryCriterionType)
    IL_0008:  nop
    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  callvirt   instance class [mscorlib]System.Reflection.MemberInfo [System.Core]System.Linq.Expressions.MemberExpression::get_Member()
    IL_0010:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_0015:  call       instance void NHibernate.Linq.Visitors.BinaryCriterionVisitor::set_Name(string)
    IL_001a:  nop
    IL_001b:  ldarg.1
    IL_001c:  stloc.0
    IL_001d:  br.s       IL_001f

    IL_001f:  ldloc.0
    IL_0020:  ret
  } // end of method BinaryCriterionVisitor::VisitMemberAccess

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitConstant(class [System.Core]System.Linq.Expressions.ConstantExpression expr) cil managed
  {
    // Code size       28 (0x1c)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4.1
    IL_0003:  call       instance void NHibernate.Linq.Visitors.BinaryCriterionVisitor::set_Type(valuetype NHibernate.Linq.Visitors.BinaryCriterionType)
    IL_0008:  nop
    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  call       object NHibernate.Linq.Util.QueryUtil::GetExpressionValue(class [System.Core]System.Linq.Expressions.Expression)
    IL_0010:  call       instance void NHibernate.Linq.Visitors.BinaryCriterionVisitor::set_Value(object)
    IL_0015:  nop
    IL_0016:  ldarg.1
    IL_0017:  stloc.0
    IL_0018:  br.s       IL_001a

    IL_001a:  ldloc.0
    IL_001b:  ret
  } // end of method BinaryCriterionVisitor::VisitConstant

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitEntity(class NHibernate.Linq.Expressions.EntityExpression expr) cil managed
  {
    // Code size       34 (0x22)
    .maxstack  3
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4.2
    IL_0003:  call       instance void NHibernate.Linq.Visitors.BinaryCriterionVisitor::set_Type(valuetype NHibernate.Linq.Visitors.BinaryCriterionType)
    IL_0008:  nop
    IL_0009:  ldarg.0
    IL_000a:  ldarg.0
    IL_000b:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.BinaryCriterionVisitor::rootCriteria
    IL_0010:  ldarg.1
    IL_0011:  call       string NHibernate.Linq.Visitors.MemberNameVisitor::GetMemberName(class [NHibernate]NHibernate.ICriteria,
                                                                                          class [System.Core]System.Linq.Expressions.Expression)
    IL_0016:  call       instance void NHibernate.Linq.Visitors.BinaryCriterionVisitor::set_Name(string)
    IL_001b:  nop
    IL_001c:  ldarg.1
    IL_001d:  stloc.0
    IL_001e:  br.s       IL_0020

    IL_0020:  ldloc.0
    IL_0021:  ret
  } // end of method BinaryCriterionVisitor::VisitEntity

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitPropertyAccess(class NHibernate.Linq.Expressions.PropertyAccessExpression expr) cil managed
  {
    // Code size       34 (0x22)
    .maxstack  3
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4.2
    IL_0003:  call       instance void NHibernate.Linq.Visitors.BinaryCriterionVisitor::set_Type(valuetype NHibernate.Linq.Visitors.BinaryCriterionType)
    IL_0008:  nop
    IL_0009:  ldarg.0
    IL_000a:  ldarg.0
    IL_000b:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.BinaryCriterionVisitor::rootCriteria
    IL_0010:  ldarg.1
    IL_0011:  call       string NHibernate.Linq.Visitors.MemberNameVisitor::GetMemberName(class [NHibernate]NHibernate.ICriteria,
                                                                                          class [System.Core]System.Linq.Expressions.Expression)
    IL_0016:  call       instance void NHibernate.Linq.Visitors.BinaryCriterionVisitor::set_Name(string)
    IL_001b:  nop
    IL_001c:  ldarg.1
    IL_001d:  stloc.0
    IL_001e:  br.s       IL_0020

    IL_0020:  ldloc.0
    IL_0021:  ret
  } // end of method BinaryCriterionVisitor::VisitPropertyAccess

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitCollectionAccess(class NHibernate.Linq.Expressions.CollectionAccessExpression expr) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.NHibernateExpressionVisitor::VisitPropertyAccess(class NHibernate.Linq.Expressions.PropertyAccessExpression)
    IL_0008:  stloc.0
    IL_0009:  br.s       IL_000b

    IL_000b:  ldloc.0
    IL_000c:  ret
  } // end of method BinaryCriterionVisitor::VisitCollectionAccess

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitUnary(class [System.Core]System.Linq.Expressions.UnaryExpression expr) cil managed
  {
    // Code size       57 (0x39)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.ExpressionType [System.Core]System.Linq.Expressions.Expression::get_NodeType()
    IL_0007:  ldc.i4.s   10
    IL_0009:  ceq
    IL_000b:  ldc.i4.0
    IL_000c:  ceq
    IL_000e:  stloc.1
    IL_000f:  ldloc.1
    IL_0010:  brtrue.s   IL_0033

    IL_0012:  nop
    IL_0013:  ldarg.0
    IL_0014:  ldarg.1
    IL_0015:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.UnaryExpression::get_Operand()
    IL_001a:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_001f:  call       instance void NHibernate.Linq.Visitors.BinaryCriterionVisitor::set_ConvertTo(class [mscorlib]System.Type)
    IL_0024:  nop
    IL_0025:  ldarg.0
    IL_0026:  ldarg.1
    IL_0027:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.UnaryExpression::get_Operand()
    IL_002c:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0031:  pop
    IL_0032:  nop
    IL_0033:  ldarg.1
    IL_0034:  stloc.0
    IL_0035:  br.s       IL_0037

    IL_0037:  ldloc.0
    IL_0038:  ret
  } // end of method BinaryCriterionVisitor::VisitUnary

  .method public hidebysig static class [NHibernate]NHibernate.Criterion.ICriterion 
          GetBinaryCriteria(class [NHibernate]NHibernate.ICriteria rootCriteria,
                            class [NHibernate]NHibernate.ISession session,
                            class [System.Core]System.Linq.Expressions.BinaryExpression expr,
                            class NHibernate.Linq.Visitors.ComparePropToValue comparePropToValue,
                            class NHibernate.Linq.Visitors.ComparePropToProp comparePropToProp,
                            class NHibernate.Linq.Visitors.CompareValueToCriteria compareValueToCriteria,
                            class NHibernate.Linq.Visitors.ComparePropToCriteria comparePropToCriteria) cil managed
  {
    // Code size       242 (0xf2)
    .maxstack  3
    .locals init (class NHibernate.Linq.Visitors.BinaryCriterionVisitor V_0,
             class NHibernate.Linq.Visitors.BinaryCriterionVisitor V_1,
             object V_2,
             class [NHibernate]NHibernate.Criterion.ICriterion V_3,
             valuetype NHibernate.Linq.Visitors.BinaryCriterionType V_4,
             bool V_5)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  newobj     instance void NHibernate.Linq.Visitors.BinaryCriterionVisitor::.ctor(class [NHibernate]NHibernate.ICriteria,
                                                                                              class [NHibernate]NHibernate.ISession)
    IL_0008:  stloc.0
    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  newobj     instance void NHibernate.Linq.Visitors.BinaryCriterionVisitor::.ctor(class [NHibernate]NHibernate.ICriteria,
                                                                                              class [NHibernate]NHibernate.ISession)
    IL_0010:  stloc.1
    IL_0011:  ldloc.0
    IL_0012:  ldarg.2
    IL_0013:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.BinaryExpression::get_Left()
    IL_0018:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_001d:  pop
    IL_001e:  ldloc.1
    IL_001f:  ldarg.2
    IL_0020:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.BinaryExpression::get_Right()
    IL_0025:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_002a:  pop
    IL_002b:  ldloc.0
    IL_002c:  callvirt   instance valuetype NHibernate.Linq.Visitors.BinaryCriterionType NHibernate.Linq.Visitors.BinaryCriterionVisitor::get_Type()
    IL_0031:  stloc.s    V_4
    IL_0033:  ldloc.s    V_4
    IL_0035:  ldc.i4.1
    IL_0036:  sub
    IL_0037:  switch     ( 
                          IL_00c9,
                          IL_0049)
    IL_0044:  br         IL_00df

    IL_0049:  ldloc.1
    IL_004a:  callvirt   instance valuetype NHibernate.Linq.Visitors.BinaryCriterionType NHibernate.Linq.Visitors.BinaryCriterionVisitor::get_Type()
    IL_004f:  stloc.s    V_4
    IL_0051:  ldloc.s    V_4
    IL_0053:  ldc.i4.1
    IL_0054:  sub
    IL_0055:  switch     ( 
                          IL_0068,
                          IL_009b,
                          IL_00b1)
    IL_0066:  br.s       IL_00c7

    IL_0068:  ldloc.1
    IL_0069:  callvirt   instance object NHibernate.Linq.Visitors.BinaryCriterionVisitor::get_Value()
    IL_006e:  stloc.2
    IL_006f:  ldloc.0
    IL_0070:  callvirt   instance class [mscorlib]System.Type NHibernate.Linq.Visitors.BinaryCriterionVisitor::get_ConvertTo()
    IL_0075:  ldnull
    IL_0076:  ceq
    IL_0078:  stloc.s    V_5
    IL_007a:  ldloc.s    V_5
    IL_007c:  brtrue.s   IL_008b

    IL_007e:  ldloc.2
    IL_007f:  ldloc.0
    IL_0080:  callvirt   instance class [mscorlib]System.Type NHibernate.Linq.Visitors.BinaryCriterionVisitor::get_ConvertTo()
    IL_0085:  call       object NHibernate.Linq.Util.LinqUtil::ChangeType(object,
                                                                          class [mscorlib]System.Type)
    IL_008a:  stloc.2
    IL_008b:  ldarg.3
    IL_008c:  ldloc.0
    IL_008d:  callvirt   instance string NHibernate.Linq.Visitors.BinaryCriterionVisitor::get_Name()
    IL_0092:  ldloc.2
    IL_0093:  callvirt   instance class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Visitors.ComparePropToValue::Invoke(string,
                                                                                                                                        object)
    IL_0098:  stloc.3
    IL_0099:  br.s       IL_00f0

    IL_009b:  ldarg.s    comparePropToProp
    IL_009d:  ldloc.0
    IL_009e:  callvirt   instance string NHibernate.Linq.Visitors.BinaryCriterionVisitor::get_Name()
    IL_00a3:  ldloc.1
    IL_00a4:  callvirt   instance string NHibernate.Linq.Visitors.BinaryCriterionVisitor::get_Name()
    IL_00a9:  callvirt   instance class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Visitors.ComparePropToProp::Invoke(string,
                                                                                                                                       string)
    IL_00ae:  stloc.3
    IL_00af:  br.s       IL_00f0

    IL_00b1:  ldarg.s    comparePropToCriteria
    IL_00b3:  ldloc.0
    IL_00b4:  callvirt   instance string NHibernate.Linq.Visitors.BinaryCriterionVisitor::get_Name()
    IL_00b9:  ldloc.1
    IL_00ba:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Visitors.BinaryCriterionVisitor::get_Criteria()
    IL_00bf:  callvirt   instance class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Visitors.ComparePropToCriteria::Invoke(string,
                                                                                                                                           class [NHibernate]NHibernate.Criterion.DetachedCriteria)
    IL_00c4:  stloc.3
    IL_00c5:  br.s       IL_00f0

    IL_00c7:  br.s       IL_00df

    IL_00c9:  ldarg.s    compareValueToCriteria
    IL_00cb:  ldloc.0
    IL_00cc:  callvirt   instance object NHibernate.Linq.Visitors.BinaryCriterionVisitor::get_Value()
    IL_00d1:  ldloc.1
    IL_00d2:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Visitors.BinaryCriterionVisitor::get_Criteria()
    IL_00d7:  callvirt   instance class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Visitors.CompareValueToCriteria::Invoke(object,
                                                                                                                                            class [NHibernate]NHibernate.Criterion.DetachedCriteria)
    IL_00dc:  stloc.3
    IL_00dd:  br.s       IL_00f0

    IL_00df:  ldstr      "Could not understand: "
    IL_00e4:  ldarg.2
    IL_00e5:  call       string [mscorlib]System.String::Concat(object,
                                                                object)
    IL_00ea:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor(string)
    IL_00ef:  throw

    IL_00f0:  ldloc.3
    IL_00f1:  ret
  } // end of method BinaryCriterionVisitor::GetBinaryCriteria

  .property instance class [mscorlib]System.Type
          ConvertTo()
  {
    .set instance void NHibernate.Linq.Visitors.BinaryCriterionVisitor::set_ConvertTo(class [mscorlib]System.Type)
    .get instance class [mscorlib]System.Type NHibernate.Linq.Visitors.BinaryCriterionVisitor::get_ConvertTo()
  } // end of property BinaryCriterionVisitor::ConvertTo
  .property instance valuetype NHibernate.Linq.Visitors.BinaryCriterionType
          Type()
  {
    .get instance valuetype NHibernate.Linq.Visitors.BinaryCriterionType NHibernate.Linq.Visitors.BinaryCriterionVisitor::get_Type()
    .set instance void NHibernate.Linq.Visitors.BinaryCriterionVisitor::set_Type(valuetype NHibernate.Linq.Visitors.BinaryCriterionType)
  } // end of property BinaryCriterionVisitor::Type
  .property instance object Value()
  {
    .get instance object NHibernate.Linq.Visitors.BinaryCriterionVisitor::get_Value()
    .set instance void NHibernate.Linq.Visitors.BinaryCriterionVisitor::set_Value(object)
  } // end of property BinaryCriterionVisitor::Value
  .property instance string Name()
  {
    .get instance string NHibernate.Linq.Visitors.BinaryCriterionVisitor::get_Name()
    .set instance void NHibernate.Linq.Visitors.BinaryCriterionVisitor::set_Name(string)
  } // end of property BinaryCriterionVisitor::Name
  .property instance class [NHibernate]NHibernate.Criterion.DetachedCriteria
          Criteria()
  {
    .set instance void NHibernate.Linq.Visitors.BinaryCriterionVisitor::set_Criteria(class [NHibernate]NHibernate.Criterion.DetachedCriteria)
    .get instance class [NHibernate]NHibernate.Criterion.DetachedCriteria NHibernate.Linq.Visitors.BinaryCriterionVisitor::get_Criteria()
  } // end of property BinaryCriterionVisitor::Criteria
} // end of class NHibernate.Linq.Visitors.BinaryCriterionVisitor

.class public auto ansi beforefieldinit NHibernate.Linq.Visitors.BinaryExpressionOrderer
       extends NHibernate.Linq.Visitors.NHibernateExpressionVisitor
{
  .class auto ansi nested private beforefieldinit BinaryExpressionTypeFinder
         extends NHibernate.Linq.Visitors.NHibernateExpressionVisitor
  {
    .field private bool _isNestedBinaryExpression
    .field private valuetype NHibernate.Linq.Visitors.BinaryCriterionType _type
    .method public hidebysig specialname 
            instance valuetype NHibernate.Linq.Visitors.BinaryCriterionType 
            get_Type() cil managed
    {
      // Code size       12 (0xc)
      .maxstack  1
      .locals init (valuetype NHibernate.Linq.Visitors.BinaryCriterionType V_0)
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  ldfld      valuetype NHibernate.Linq.Visitors.BinaryCriterionType NHibernate.Linq.Visitors.BinaryExpressionOrderer/BinaryExpressionTypeFinder::_type
      IL_0007:  stloc.0
      IL_0008:  br.s       IL_000a

      IL_000a:  ldloc.0
      IL_000b:  ret
    } // end of method BinaryExpressionTypeFinder::get_Type

    .method private hidebysig specialname 
            instance void  set_Type(valuetype NHibernate.Linq.Visitors.BinaryCriterionType 'value') cil managed
    {
      // Code size       19 (0x13)
      .maxstack  2
      .locals init (bool V_0)
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  ldfld      bool NHibernate.Linq.Visitors.BinaryExpressionOrderer/BinaryExpressionTypeFinder::_isNestedBinaryExpression
      IL_0007:  stloc.0
      IL_0008:  ldloc.0
      IL_0009:  brtrue.s   IL_0012

      IL_000b:  ldarg.0
      IL_000c:  ldarg.1
      IL_000d:  stfld      valuetype NHibernate.Linq.Visitors.BinaryCriterionType NHibernate.Linq.Visitors.BinaryExpressionOrderer/BinaryExpressionTypeFinder::_type
      IL_0012:  ret
    } // end of method BinaryExpressionTypeFinder::set_Type

    .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
            VisitBinary(class [System.Core]System.Linq.Expressions.BinaryExpression b) cil managed
    {
      // Code size       14 (0xe)
      .maxstack  2
      .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  ldc.i4.1
      IL_0003:  stfld      bool NHibernate.Linq.Visitors.BinaryExpressionOrderer/BinaryExpressionTypeFinder::_isNestedBinaryExpression
      IL_0008:  ldarg.1
      IL_0009:  stloc.0
      IL_000a:  br.s       IL_000c

      IL_000c:  ldloc.0
      IL_000d:  ret
    } // end of method BinaryExpressionTypeFinder::VisitBinary

    .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
            VisitMethodCall(class [System.Core]System.Linq.Expressions.MethodCallExpression expr) cil managed
    {
      // Code size       15 (0xf)
      .maxstack  2
      .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  ldc.i4.3
      IL_0003:  call       instance void NHibernate.Linq.Visitors.BinaryExpressionOrderer/BinaryExpressionTypeFinder::set_Type(valuetype NHibernate.Linq.Visitors.BinaryCriterionType)
      IL_0008:  nop
      IL_0009:  ldarg.1
      IL_000a:  stloc.0
      IL_000b:  br.s       IL_000d

      IL_000d:  ldloc.0
      IL_000e:  ret
    } // end of method BinaryExpressionTypeFinder::VisitMethodCall

    .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
            VisitConstant(class [System.Core]System.Linq.Expressions.ConstantExpression expr) cil managed
    {
      // Code size       15 (0xf)
      .maxstack  2
      .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  ldc.i4.1
      IL_0003:  call       instance void NHibernate.Linq.Visitors.BinaryExpressionOrderer/BinaryExpressionTypeFinder::set_Type(valuetype NHibernate.Linq.Visitors.BinaryCriterionType)
      IL_0008:  nop
      IL_0009:  ldarg.1
      IL_000a:  stloc.0
      IL_000b:  br.s       IL_000d

      IL_000d:  ldloc.0
      IL_000e:  ret
    } // end of method BinaryExpressionTypeFinder::VisitConstant

    .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
            VisitEntity(class NHibernate.Linq.Expressions.EntityExpression expr) cil managed
    {
      // Code size       15 (0xf)
      .maxstack  2
      .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  ldc.i4.2
      IL_0003:  call       instance void NHibernate.Linq.Visitors.BinaryExpressionOrderer/BinaryExpressionTypeFinder::set_Type(valuetype NHibernate.Linq.Visitors.BinaryCriterionType)
      IL_0008:  nop
      IL_0009:  ldarg.1
      IL_000a:  stloc.0
      IL_000b:  br.s       IL_000d

      IL_000d:  ldloc.0
      IL_000e:  ret
    } // end of method BinaryExpressionTypeFinder::VisitEntity

    .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
            VisitPropertyAccess(class NHibernate.Linq.Expressions.PropertyAccessExpression expr) cil managed
    {
      // Code size       15 (0xf)
      .maxstack  2
      .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  ldc.i4.2
      IL_0003:  call       instance void NHibernate.Linq.Visitors.BinaryExpressionOrderer/BinaryExpressionTypeFinder::set_Type(valuetype NHibernate.Linq.Visitors.BinaryCriterionType)
      IL_0008:  nop
      IL_0009:  ldarg.1
      IL_000a:  stloc.0
      IL_000b:  br.s       IL_000d

      IL_000d:  ldloc.0
      IL_000e:  ret
    } // end of method BinaryExpressionTypeFinder::VisitPropertyAccess

    .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
            VisitCollectionAccess(class NHibernate.Linq.Expressions.CollectionAccessExpression expr) cil managed
    {
      // Code size       15 (0xf)
      .maxstack  2
      .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  ldc.i4.2
      IL_0003:  call       instance void NHibernate.Linq.Visitors.BinaryExpressionOrderer/BinaryExpressionTypeFinder::set_Type(valuetype NHibernate.Linq.Visitors.BinaryCriterionType)
      IL_0008:  nop
      IL_0009:  ldarg.1
      IL_000a:  stloc.0
      IL_000b:  br.s       IL_000d

      IL_000d:  ldloc.0
      IL_000e:  ret
    } // end of method BinaryExpressionTypeFinder::VisitCollectionAccess

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void NHibernate.Linq.Visitors.NHibernateExpressionVisitor::.ctor()
      IL_0006:  ret
    } // end of method BinaryExpressionTypeFinder::.ctor

    .property instance valuetype NHibernate.Linq.Visitors.BinaryCriterionType
            Type()
    {
      .set instance void NHibernate.Linq.Visitors.BinaryExpressionOrderer/BinaryExpressionTypeFinder::set_Type(valuetype NHibernate.Linq.Visitors.BinaryCriterionType)
      .get instance valuetype NHibernate.Linq.Visitors.BinaryCriterionType NHibernate.Linq.Visitors.BinaryExpressionOrderer/BinaryExpressionTypeFinder::get_Type()
    } // end of property BinaryExpressionTypeFinder::Type
  } // end of class BinaryExpressionTypeFinder

  .method private hidebysig instance valuetype [System.Core]System.Linq.Expressions.ExpressionType 
          ReflectExpressionType(valuetype [System.Core]System.Linq.Expressions.ExpressionType 'type') cil managed
  {
    // Code size       91 (0x5b)
    .maxstack  2
    .locals init (valuetype [System.Core]System.Linq.Expressions.ExpressionType V_0,
             valuetype [System.Core]System.Linq.Expressions.ExpressionType V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  stloc.1
    IL_0003:  ldloc.1
    IL_0004:  ldc.i4.s   13
    IL_0006:  sub
    IL_0007:  switch     ( 
                          IL_004b,
                          IL_0055,
                          IL_0041,
                          IL_0046,
                          IL_0055,
                          IL_0055,
                          IL_0055,
                          IL_0037,
                          IL_003c)
    IL_0030:  ldloc.1
    IL_0031:  ldc.i4.s   35
    IL_0033:  beq.s      IL_0050

    IL_0035:  br.s       IL_0055

    IL_0037:  ldc.i4.s   15
    IL_0039:  stloc.0
    IL_003a:  br.s       IL_0059

    IL_003c:  ldc.i4.s   16
    IL_003e:  stloc.0
    IL_003f:  br.s       IL_0059

    IL_0041:  ldc.i4.s   20
    IL_0043:  stloc.0
    IL_0044:  br.s       IL_0059

    IL_0046:  ldc.i4.s   21
    IL_0048:  stloc.0
    IL_0049:  br.s       IL_0059

    IL_004b:  ldc.i4.s   13
    IL_004d:  stloc.0
    IL_004e:  br.s       IL_0059

    IL_0050:  ldc.i4.s   35
    IL_0052:  stloc.0
    IL_0053:  br.s       IL_0059

    IL_0055:  ldarg.1
    IL_0056:  stloc.0
    IL_0057:  br.s       IL_0059

    IL_0059:  ldloc.0
    IL_005a:  ret
  } // end of method BinaryExpressionOrderer::ReflectExpressionType

  .method private hidebysig instance class [System.Core]System.Linq.Expressions.Expression 
          Swap(class [System.Core]System.Linq.Expressions.BinaryExpression expr) cil managed
  {
    // Code size       55 (0x37)
    .maxstack  6
    .locals init (valuetype [System.Core]System.Linq.Expressions.ExpressionType V_0,
             class [System.Core]System.Linq.Expressions.Expression V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.ExpressionType [System.Core]System.Linq.Expressions.Expression::get_NodeType()
    IL_0008:  call       instance valuetype [System.Core]System.Linq.Expressions.ExpressionType NHibernate.Linq.Visitors.BinaryExpressionOrderer::ReflectExpressionType(valuetype [System.Core]System.Linq.Expressions.ExpressionType)
    IL_000d:  stloc.0
    IL_000e:  ldloc.0
    IL_000f:  ldarg.1
    IL_0010:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.BinaryExpression::get_Right()
    IL_0015:  ldarg.1
    IL_0016:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.BinaryExpression::get_Left()
    IL_001b:  ldarg.1
    IL_001c:  callvirt   instance bool [System.Core]System.Linq.Expressions.BinaryExpression::get_IsLiftedToNull()
    IL_0021:  ldarg.1
    IL_0022:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [System.Core]System.Linq.Expressions.BinaryExpression::get_Method()
    IL_0027:  ldarg.1
    IL_0028:  callvirt   instance class [System.Core]System.Linq.Expressions.LambdaExpression [System.Core]System.Linq.Expressions.BinaryExpression::get_Conversion()
    IL_002d:  call       class [System.Core]System.Linq.Expressions.BinaryExpression [System.Core]System.Linq.Expressions.Expression::MakeBinary(valuetype [System.Core]System.Linq.Expressions.ExpressionType,
                                                                                                                                                 class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                                 class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                                 bool,
                                                                                                                                                 class [mscorlib]System.Reflection.MethodInfo,
                                                                                                                                                 class [System.Core]System.Linq.Expressions.LambdaExpression)
    IL_0032:  stloc.1
    IL_0033:  br.s       IL_0035

    IL_0035:  ldloc.1
    IL_0036:  ret
  } // end of method BinaryExpressionOrderer::Swap

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitBinary(class [System.Core]System.Linq.Expressions.BinaryExpression expr) cil managed
  {
    // Code size       204 (0xcc)
    .maxstack  2
    .locals init (class NHibernate.Linq.Visitors.BinaryExpressionOrderer/BinaryExpressionTypeFinder V_0,
             class NHibernate.Linq.Visitors.BinaryExpressionOrderer/BinaryExpressionTypeFinder V_1,
             class [System.Core]System.Linq.Expressions.Expression V_2,
             bool V_3)
    IL_0000:  nop
    IL_0001:  newobj     instance void NHibernate.Linq.Visitors.BinaryExpressionOrderer/BinaryExpressionTypeFinder::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.1
    IL_0009:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.BinaryExpression::get_Left()
    IL_000e:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0013:  pop
    IL_0014:  ldloc.0
    IL_0015:  callvirt   instance valuetype NHibernate.Linq.Visitors.BinaryCriterionType NHibernate.Linq.Visitors.BinaryExpressionOrderer/BinaryExpressionTypeFinder::get_Type()
    IL_001a:  ldc.i4.0
    IL_001b:  ceq
    IL_001d:  ldc.i4.0
    IL_001e:  ceq
    IL_0020:  stloc.3
    IL_0021:  ldloc.3
    IL_0022:  brtrue.s   IL_0031

    IL_0024:  ldarg.0
    IL_0025:  ldarg.1
    IL_0026:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::VisitBinary(class [System.Core]System.Linq.Expressions.BinaryExpression)
    IL_002b:  stloc.2
    IL_002c:  br         IL_00ca

    IL_0031:  newobj     instance void NHibernate.Linq.Visitors.BinaryExpressionOrderer/BinaryExpressionTypeFinder::.ctor()
    IL_0036:  stloc.1
    IL_0037:  ldloc.1
    IL_0038:  ldarg.1
    IL_0039:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.BinaryExpression::get_Right()
    IL_003e:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0043:  pop
    IL_0044:  ldloc.1
    IL_0045:  callvirt   instance valuetype NHibernate.Linq.Visitors.BinaryCriterionType NHibernate.Linq.Visitors.BinaryExpressionOrderer/BinaryExpressionTypeFinder::get_Type()
    IL_004a:  ldc.i4.0
    IL_004b:  ceq
    IL_004d:  ldc.i4.0
    IL_004e:  ceq
    IL_0050:  stloc.3
    IL_0051:  ldloc.3
    IL_0052:  brtrue.s   IL_005e

    IL_0054:  ldarg.0
    IL_0055:  ldarg.1
    IL_0056:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::VisitBinary(class [System.Core]System.Linq.Expressions.BinaryExpression)
    IL_005b:  stloc.2
    IL_005c:  br.s       IL_00ca

    IL_005e:  ldloc.1
    IL_005f:  callvirt   instance valuetype NHibernate.Linq.Visitors.BinaryCriterionType NHibernate.Linq.Visitors.BinaryExpressionOrderer/BinaryExpressionTypeFinder::get_Type()
    IL_0064:  ldc.i4.2
    IL_0065:  ceq
    IL_0067:  ldc.i4.0
    IL_0068:  ceq
    IL_006a:  stloc.3
    IL_006b:  ldloc.3
    IL_006c:  brtrue.s   IL_0099

    IL_006e:  nop
    IL_006f:  ldloc.0
    IL_0070:  callvirt   instance valuetype NHibernate.Linq.Visitors.BinaryCriterionType NHibernate.Linq.Visitors.BinaryExpressionOrderer/BinaryExpressionTypeFinder::get_Type()
    IL_0075:  ldc.i4.3
    IL_0076:  beq.s      IL_0086

    IL_0078:  ldloc.0
    IL_0079:  callvirt   instance valuetype NHibernate.Linq.Visitors.BinaryCriterionType NHibernate.Linq.Visitors.BinaryExpressionOrderer/BinaryExpressionTypeFinder::get_Type()
    IL_007e:  ldc.i4.1
    IL_007f:  ceq
    IL_0081:  ldc.i4.0
    IL_0082:  ceq
    IL_0084:  br.s       IL_0087

    IL_0086:  ldc.i4.0
    IL_0087:  stloc.3
    IL_0088:  ldloc.3
    IL_0089:  brtrue.s   IL_0096

    IL_008b:  nop
    IL_008c:  ldarg.0
    IL_008d:  ldarg.1
    IL_008e:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.BinaryExpressionOrderer::Swap(class [System.Core]System.Linq.Expressions.BinaryExpression)
    IL_0093:  stloc.2
    IL_0094:  br.s       IL_00ca

    IL_0096:  nop
    IL_0097:  br.s       IL_00c6

    IL_0099:  ldloc.1
    IL_009a:  callvirt   instance valuetype NHibernate.Linq.Visitors.BinaryCriterionType NHibernate.Linq.Visitors.BinaryExpressionOrderer/BinaryExpressionTypeFinder::get_Type()
    IL_009f:  ldc.i4.1
    IL_00a0:  ceq
    IL_00a2:  ldc.i4.0
    IL_00a3:  ceq
    IL_00a5:  stloc.3
    IL_00a6:  ldloc.3
    IL_00a7:  brtrue.s   IL_00c6

    IL_00a9:  nop
    IL_00aa:  ldloc.0
    IL_00ab:  callvirt   instance valuetype NHibernate.Linq.Visitors.BinaryCriterionType NHibernate.Linq.Visitors.BinaryExpressionOrderer/BinaryExpressionTypeFinder::get_Type()
    IL_00b0:  ldc.i4.3
    IL_00b1:  ceq
    IL_00b3:  ldc.i4.0
    IL_00b4:  ceq
    IL_00b6:  stloc.3
    IL_00b7:  ldloc.3
    IL_00b8:  brtrue.s   IL_00c5

    IL_00ba:  nop
    IL_00bb:  ldarg.0
    IL_00bc:  ldarg.1
    IL_00bd:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.BinaryExpressionOrderer::Swap(class [System.Core]System.Linq.Expressions.BinaryExpression)
    IL_00c2:  stloc.2
    IL_00c3:  br.s       IL_00ca

    IL_00c5:  nop
    IL_00c6:  ldarg.1
    IL_00c7:  stloc.2
    IL_00c8:  br.s       IL_00ca

    IL_00ca:  ldloc.2
    IL_00cb:  ret
  } // end of method BinaryExpressionOrderer::VisitBinary

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void NHibernate.Linq.Visitors.NHibernateExpressionVisitor::.ctor()
    IL_0006:  ret
  } // end of method BinaryExpressionOrderer::.ctor

} // end of class NHibernate.Linq.Visitors.BinaryExpressionOrderer

.class public auto ansi beforefieldinit NHibernate.Linq.Visitors.CollectionAliasVisitor
       extends NHibernate.Linq.Visitors.NHibernateExpressionVisitor
{
  .field private class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.ParameterExpression> _currentCollectionAliases
  .method private hidebysig instance string 
          FindCollectionAlias(class [mscorlib]System.Type elementType) cil managed
  {
    // Code size       107 (0x6b)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.ParameterExpression V_0,
             string V_1,
             bool V_2,
             class [mscorlib]System.Collections.Generic.IEnumerator`1<class [System.Core]System.Linq.Expressions.ParameterExpression> V_3)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.ParameterExpression> NHibernate.Linq.Visitors.CollectionAliasVisitor::_currentCollectionAliases
    IL_0007:  ldnull
    IL_0008:  ceq
    IL_000a:  ldc.i4.0
    IL_000b:  ceq
    IL_000d:  stloc.2
    IL_000e:  ldloc.2
    IL_000f:  brtrue.s   IL_0015

    IL_0011:  ldnull
    IL_0012:  stloc.1
    IL_0013:  br.s       IL_0068

    IL_0015:  nop
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.ParameterExpression> NHibernate.Linq.Visitors.CollectionAliasVisitor::_currentCollectionAliases
    IL_001c:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.ParameterExpression>::GetEnumerator()
    IL_0021:  stloc.3
    .try
    {
      IL_0022:  br.s       IL_0047

      IL_0024:  ldloc.3
      IL_0025:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class [System.Core]System.Linq.Expressions.ParameterExpression>::get_Current()
      IL_002a:  stloc.0
      IL_002b:  nop
      IL_002c:  ldloc.0
      IL_002d:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
      IL_0032:  ldarg.1
      IL_0033:  ceq
      IL_0035:  ldc.i4.0
      IL_0036:  ceq
      IL_0038:  stloc.2
      IL_0039:  ldloc.2
      IL_003a:  brtrue.s   IL_0046

      IL_003c:  nop
      IL_003d:  ldloc.0
      IL_003e:  callvirt   instance string [System.Core]System.Linq.Expressions.ParameterExpression::get_Name()
      IL_0043:  stloc.1
      IL_0044:  leave.s    IL_0068

      IL_0046:  nop
      IL_0047:  ldloc.3
      IL_0048:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_004d:  stloc.2
      IL_004e:  ldloc.2
      IL_004f:  brtrue.s   IL_0024

      IL_0051:  leave.s    IL_0063

    }  // end .try
    finally
    {
      IL_0053:  ldloc.3
      IL_0054:  ldnull
      IL_0055:  ceq
      IL_0057:  stloc.2
      IL_0058:  ldloc.2
      IL_0059:  brtrue.s   IL_0062

      IL_005b:  ldloc.3
      IL_005c:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0061:  nop
      IL_0062:  endfinally
    }  // end handler
    IL_0063:  nop
    IL_0064:  ldnull
    IL_0065:  stloc.1
    IL_0066:  br.s       IL_0068

    IL_0068:  nop
    IL_0069:  ldloc.1
    IL_006a:  ret
  } // end of method CollectionAliasVisitor::FindCollectionAlias

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitCollectionAccess(class NHibernate.Linq.Expressions.CollectionAccessExpression expr) cil managed
  {
    // Code size       119 (0x77)
    .maxstack  6
    .locals init (class NHibernate.Linq.Expressions.EntityExpression V_0,
             string V_1,
             class [System.Core]System.Linq.Expressions.Expression V_2,
             bool V_3)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Expressions.CollectionAccessExpression::get_ElementExpression()
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldnull
    IL_000a:  ceq
    IL_000c:  ldc.i4.0
    IL_000d:  ceq
    IL_000f:  stloc.3
    IL_0010:  ldloc.3
    IL_0011:  brtrue.s   IL_0017

    IL_0013:  ldarg.1
    IL_0014:  stloc.2
    IL_0015:  br.s       IL_0075

    IL_0017:  ldarg.0
    IL_0018:  ldloc.0
    IL_0019:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_001e:  call       instance string NHibernate.Linq.Visitors.CollectionAliasVisitor::FindCollectionAlias(class [mscorlib]System.Type)
    IL_0023:  stloc.1
    IL_0024:  ldloc.1
    IL_0025:  call       bool [mscorlib]System.String::IsNullOrEmpty(string)
    IL_002a:  ldc.i4.0
    IL_002b:  ceq
    IL_002d:  stloc.3
    IL_002e:  ldloc.3
    IL_002f:  brtrue.s   IL_0035

    IL_0031:  ldarg.1
    IL_0032:  stloc.2
    IL_0033:  br.s       IL_0075

    IL_0035:  ldloc.0
    IL_0036:  callvirt   instance string NHibernate.Linq.Expressions.EntityExpression::get_AssociationPath()
    IL_003b:  ldloc.1
    IL_003c:  ldloc.0
    IL_003d:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_0042:  ldloc.0
    IL_0043:  callvirt   instance class [NHibernate]NHibernate.Metadata.IClassMetadata NHibernate.Linq.Expressions.EntityExpression::get_MetaData()
    IL_0048:  ldloc.0
    IL_0049:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Expressions.EntityExpression::get_Expression()
    IL_004e:  newobj     instance void NHibernate.Linq.Expressions.EntityExpression::.ctor(string,
                                                                                           string,
                                                                                           class [mscorlib]System.Type,
                                                                                           class [NHibernate]NHibernate.Metadata.IClassMetadata,
                                                                                           class [System.Core]System.Linq.Expressions.Expression)
    IL_0053:  stloc.0
    IL_0054:  ldarg.1
    IL_0055:  callvirt   instance string NHibernate.Linq.Expressions.PropertyAccessExpression::get_Name()
    IL_005a:  ldarg.1
    IL_005b:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_0060:  ldarg.1
    IL_0061:  callvirt   instance class [NHibernate]NHibernate.Type.IType NHibernate.Linq.Expressions.PropertyAccessExpression::get_NHibernateType()
    IL_0066:  ldarg.1
    IL_0067:  callvirt   instance class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Expressions.PropertyAccessExpression::get_Expression()
    IL_006c:  ldloc.0
    IL_006d:  newobj     instance void NHibernate.Linq.Expressions.CollectionAccessExpression::.ctor(string,
                                                                                                     class [mscorlib]System.Type,
                                                                                                     class [NHibernate]NHibernate.Type.IType,
                                                                                                     class NHibernate.Linq.Expressions.EntityExpression,
                                                                                                     class NHibernate.Linq.Expressions.EntityExpression)
    IL_0072:  stloc.2
    IL_0073:  br.s       IL_0075

    IL_0075:  ldloc.2
    IL_0076:  ret
  } // end of method CollectionAliasVisitor::VisitCollectionAccess

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitMethodCall(class [System.Core]System.Linq.Expressions.MethodCallExpression expr) cil managed
  {
    // Code size       81 (0x51)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.LambdaExpression V_0,
             class [System.Core]System.Linq.Expressions.Expression V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0007:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Count()
    IL_000c:  ldc.i4.1
    IL_000d:  cgt
    IL_000f:  ldc.i4.0
    IL_0010:  ceq
    IL_0012:  stloc.2
    IL_0013:  ldloc.2
    IL_0014:  brtrue.s   IL_0045

    IL_0016:  nop
    IL_0017:  ldarg.1
    IL_0018:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_001d:  ldc.i4.1
    IL_001e:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_0023:  call       class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Util.LinqUtil::StripQuotes(class [System.Core]System.Linq.Expressions.Expression)
    IL_0028:  isinst     [System.Core]System.Linq.Expressions.LambdaExpression
    IL_002d:  stloc.0
    IL_002e:  ldloc.0
    IL_002f:  ldnull
    IL_0030:  ceq
    IL_0032:  stloc.2
    IL_0033:  ldloc.2
    IL_0034:  brtrue.s   IL_0044

    IL_0036:  nop
    IL_0037:  ldarg.0
    IL_0038:  ldloc.0
    IL_0039:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.ParameterExpression> [System.Core]System.Linq.Expressions.LambdaExpression::get_Parameters()
    IL_003e:  stfld      class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.ParameterExpression> NHibernate.Linq.Visitors.CollectionAliasVisitor::_currentCollectionAliases
    IL_0043:  nop
    IL_0044:  nop
    IL_0045:  ldarg.0
    IL_0046:  ldarg.1
    IL_0047:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::VisitMethodCall(class [System.Core]System.Linq.Expressions.MethodCallExpression)
    IL_004c:  stloc.1
    IL_004d:  br.s       IL_004f

    IL_004f:  ldloc.1
    IL_0050:  ret
  } // end of method CollectionAliasVisitor::VisitMethodCall

  .method public hidebysig static class [System.Core]System.Linq.Expressions.Expression 
          AssignCollectionAccessAliases(class [System.Core]System.Linq.Expressions.Expression expr) cil managed
  {
    // Code size       19 (0x13)
    .maxstack  2
    .locals init (class NHibernate.Linq.Visitors.CollectionAliasVisitor V_0,
             class [System.Core]System.Linq.Expressions.Expression V_1)
    IL_0000:  nop
    IL_0001:  newobj     instance void NHibernate.Linq.Visitors.CollectionAliasVisitor::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_000e:  stloc.1
    IL_000f:  br.s       IL_0011

    IL_0011:  ldloc.1
    IL_0012:  ret
  } // end of method CollectionAliasVisitor::AssignCollectionAccessAliases

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void NHibernate.Linq.Visitors.NHibernateExpressionVisitor::.ctor()
    IL_0006:  ret
  } // end of method CollectionAliasVisitor::.ctor

} // end of class NHibernate.Linq.Visitors.CollectionAliasVisitor

.class public auto ansi beforefieldinit NHibernate.Linq.Visitors.EntityExpressionVisitor
       extends NHibernate.Linq.Visitors.NHibernateExpressionVisitor
{
  .field private initonly bool _findFirstEntity
  .field private class NHibernate.Linq.Expressions.EntityExpression '<Expression>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance class NHibernate.Linq.Expressions.EntityExpression 
          get_Expression() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       11 (0xb)
    .maxstack  1
    .locals init (class NHibernate.Linq.Expressions.EntityExpression V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Visitors.EntityExpressionVisitor::'<Expression>k__BackingField'
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method EntityExpressionVisitor::get_Expression

  .method private hidebysig specialname instance void 
          set_Expression(class NHibernate.Linq.Expressions.EntityExpression 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Visitors.EntityExpressionVisitor::'<Expression>k__BackingField'
    IL_0007:  ret
  } // end of method EntityExpressionVisitor::set_Expression

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(bool findFirstEntity) cil managed
  {
    // Code size       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void NHibernate.Linq.Visitors.NHibernateExpressionVisitor::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      bool NHibernate.Linq.Visitors.EntityExpressionVisitor::_findFirstEntity
    IL_000f:  nop
    IL_0010:  ret
  } // end of method EntityExpressionVisitor::.ctor

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitEntity(class NHibernate.Linq.Expressions.EntityExpression expr) cil managed
  {
    // Code size       38 (0x26)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  call       instance void NHibernate.Linq.Visitors.EntityExpressionVisitor::set_Expression(class NHibernate.Linq.Expressions.EntityExpression)
    IL_0008:  nop
    IL_0009:  ldarg.0
    IL_000a:  ldfld      bool NHibernate.Linq.Visitors.EntityExpressionVisitor::_findFirstEntity
    IL_000f:  ldc.i4.0
    IL_0010:  ceq
    IL_0012:  stloc.1
    IL_0013:  ldloc.1
    IL_0014:  brtrue.s   IL_001a

    IL_0016:  ldarg.1
    IL_0017:  stloc.0
    IL_0018:  br.s       IL_0024

    IL_001a:  ldarg.0
    IL_001b:  ldarg.1
    IL_001c:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.NHibernateExpressionVisitor::VisitEntity(class NHibernate.Linq.Expressions.EntityExpression)
    IL_0021:  stloc.0
    IL_0022:  br.s       IL_0024

    IL_0024:  ldloc.0
    IL_0025:  ret
  } // end of method EntityExpressionVisitor::VisitEntity

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitMethodCall(class [System.Core]System.Linq.Expressions.MethodCallExpression expr) cil managed
  {
    // Code size       26 (0x1a)
    .maxstack  3
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0008:  ldc.i4.0
    IL_0009:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_000e:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0013:  pop
    IL_0014:  ldarg.1
    IL_0015:  stloc.0
    IL_0016:  br.s       IL_0018

    IL_0018:  ldloc.0
    IL_0019:  ret
  } // end of method EntityExpressionVisitor::VisitMethodCall

  .method private hidebysig static class NHibernate.Linq.Expressions.EntityExpression 
          FindEntity(class [System.Core]System.Linq.Expressions.Expression expr,
                     bool findFirst) cil managed
  {
    // Code size       27 (0x1b)
    .maxstack  2
    .locals init (class NHibernate.Linq.Visitors.EntityExpressionVisitor V_0,
             class NHibernate.Linq.Expressions.EntityExpression V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  newobj     instance void NHibernate.Linq.Visitors.EntityExpressionVisitor::.ctor(bool)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldarg.0
    IL_000a:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_000f:  pop
    IL_0010:  ldloc.0
    IL_0011:  callvirt   instance class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Visitors.EntityExpressionVisitor::get_Expression()
    IL_0016:  stloc.1
    IL_0017:  br.s       IL_0019

    IL_0019:  ldloc.1
    IL_001a:  ret
  } // end of method EntityExpressionVisitor::FindEntity

  .method public hidebysig static class NHibernate.Linq.Expressions.EntityExpression 
          FirstEntity(class [System.Core]System.Linq.Expressions.Expression expr) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  2
    .locals init (class NHibernate.Linq.Expressions.EntityExpression V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4.1
    IL_0003:  call       class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Visitors.EntityExpressionVisitor::FindEntity(class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                         bool)
    IL_0008:  stloc.0
    IL_0009:  br.s       IL_000b

    IL_000b:  ldloc.0
    IL_000c:  ret
  } // end of method EntityExpressionVisitor::FirstEntity

  .method public hidebysig static class NHibernate.Linq.Expressions.EntityExpression 
          RootEntity(class [System.Core]System.Linq.Expressions.Expression expr) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  2
    .locals init (class NHibernate.Linq.Expressions.EntityExpression V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4.0
    IL_0003:  call       class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Visitors.EntityExpressionVisitor::FindEntity(class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                         bool)
    IL_0008:  stloc.0
    IL_0009:  br.s       IL_000b

    IL_000b:  ldloc.0
    IL_000c:  ret
  } // end of method EntityExpressionVisitor::RootEntity

  .property instance class NHibernate.Linq.Expressions.EntityExpression
          Expression()
  {
    .get instance class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Visitors.EntityExpressionVisitor::get_Expression()
    .set instance void NHibernate.Linq.Visitors.EntityExpressionVisitor::set_Expression(class NHibernate.Linq.Expressions.EntityExpression)
  } // end of property EntityExpressionVisitor::Expression
} // end of class NHibernate.Linq.Visitors.EntityExpressionVisitor

.class public abstract auto ansi sealed beforefieldinit NHibernate.Linq.Visitors.Evaluator
       extends [mscorlib]System.Object
{
  .class auto ansi nested private beforefieldinit SubtreeEvaluator
         extends NHibernate.Linq.Visitors.ExpressionVisitor
  {
    .field private class [System.Core]System.Collections.Generic.HashSet`1<class [System.Core]System.Linq.Expressions.Expression> candidates
    .method assembly hidebysig specialname rtspecialname 
            instance void  .ctor(class [System.Core]System.Collections.Generic.HashSet`1<class [System.Core]System.Linq.Expressions.Expression> candidates) cil managed
    {
      // Code size       17 (0x11)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void NHibernate.Linq.Visitors.ExpressionVisitor::.ctor()
      IL_0006:  nop
      IL_0007:  nop
      IL_0008:  ldarg.0
      IL_0009:  ldarg.1
      IL_000a:  stfld      class [System.Core]System.Collections.Generic.HashSet`1<class [System.Core]System.Linq.Expressions.Expression> NHibernate.Linq.Visitors.Evaluator/SubtreeEvaluator::candidates
      IL_000f:  nop
      IL_0010:  ret
    } // end of method SubtreeEvaluator::.ctor

    .method assembly hidebysig instance class [System.Core]System.Linq.Expressions.Expression 
            Eval(class [System.Core]System.Linq.Expressions.Expression exp) cil managed
    {
      // Code size       13 (0xd)
      .maxstack  2
      .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  ldarg.1
      IL_0003:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
      IL_0008:  stloc.0
      IL_0009:  br.s       IL_000b

      IL_000b:  ldloc.0
      IL_000c:  ret
    } // end of method SubtreeEvaluator::Eval

    .method public hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
            Visit(class [System.Core]System.Linq.Expressions.Expression exp) cil managed
    {
      // Code size       59 (0x3b)
      .maxstack  2
      .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
               bool V_1)
      IL_0000:  nop
      IL_0001:  ldarg.1
      IL_0002:  ldnull
      IL_0003:  ceq
      IL_0005:  ldc.i4.0
      IL_0006:  ceq
      IL_0008:  stloc.1
      IL_0009:  ldloc.1
      IL_000a:  brtrue.s   IL_0011

      IL_000c:  nop
      IL_000d:  ldnull
      IL_000e:  stloc.0
      IL_000f:  br.s       IL_0039

      IL_0011:  ldarg.0
      IL_0012:  ldfld      class [System.Core]System.Collections.Generic.HashSet`1<class [System.Core]System.Linq.Expressions.Expression> NHibernate.Linq.Visitors.Evaluator/SubtreeEvaluator::candidates
      IL_0017:  ldarg.1
      IL_0018:  callvirt   instance bool class [System.Core]System.Collections.Generic.HashSet`1<class [System.Core]System.Linq.Expressions.Expression>::Contains(!0)
      IL_001d:  ldc.i4.0
      IL_001e:  ceq
      IL_0020:  stloc.1
      IL_0021:  ldloc.1
      IL_0022:  brtrue.s   IL_002f

      IL_0024:  nop
      IL_0025:  ldarg.0
      IL_0026:  ldarg.1
      IL_0027:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.Evaluator/SubtreeEvaluator::Evaluate(class [System.Core]System.Linq.Expressions.Expression)
      IL_002c:  stloc.0
      IL_002d:  br.s       IL_0039

      IL_002f:  ldarg.0
      IL_0030:  ldarg.1
      IL_0031:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
      IL_0036:  stloc.0
      IL_0037:  br.s       IL_0039

      IL_0039:  ldloc.0
      IL_003a:  ret
    } // end of method SubtreeEvaluator::Visit

    .method private hidebysig instance class [System.Core]System.Linq.Expressions.Expression 
            Evaluate(class [System.Core]System.Linq.Expressions.Expression e) cil managed
    {
      // Code size       86 (0x56)
      .maxstack  2
      .locals init (class [System.Core]System.Linq.Expressions.LambdaExpression V_0,
               class [mscorlib]System.Delegate V_1,
               class [System.Core]System.Linq.Expressions.Expression V_2,
               bool V_3)
      IL_0000:  nop
      IL_0001:  ldarg.1
      IL_0002:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.ExpressionType [System.Core]System.Linq.Expressions.Expression::get_NodeType()
      IL_0007:  ldc.i4.s   9
      IL_0009:  ceq
      IL_000b:  ldc.i4.0
      IL_000c:  ceq
      IL_000e:  stloc.3
      IL_000f:  ldloc.3
      IL_0010:  brtrue.s   IL_0016

      IL_0012:  ldarg.1
      IL_0013:  stloc.2
      IL_0014:  br.s       IL_0054

      IL_0016:  ldarg.1
      IL_0017:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.ExpressionType [System.Core]System.Linq.Expressions.Expression::get_NodeType()
      IL_001c:  ldc.i4.s   18
      IL_001e:  ceq
      IL_0020:  ldc.i4.0
      IL_0021:  ceq
      IL_0023:  stloc.3
      IL_0024:  ldloc.3
      IL_0025:  brtrue.s   IL_002b

      IL_0027:  ldarg.1
      IL_0028:  stloc.2
      IL_0029:  br.s       IL_0054

      IL_002b:  ldarg.1
      IL_002c:  ldc.i4.0
      IL_002d:  newarr     [System.Core]System.Linq.Expressions.ParameterExpression
      IL_0032:  call       class [System.Core]System.Linq.Expressions.LambdaExpression [System.Core]System.Linq.Expressions.Expression::Lambda(class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                               class [System.Core]System.Linq.Expressions.ParameterExpression[])
      IL_0037:  stloc.0
      IL_0038:  ldloc.0
      IL_0039:  callvirt   instance class [mscorlib]System.Delegate [System.Core]System.Linq.Expressions.LambdaExpression::Compile()
      IL_003e:  stloc.1
      IL_003f:  ldloc.1
      IL_0040:  ldnull
      IL_0041:  callvirt   instance object [mscorlib]System.Delegate::DynamicInvoke(object[])
      IL_0046:  ldarg.1
      IL_0047:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
      IL_004c:  call       class [System.Core]System.Linq.Expressions.ConstantExpression [System.Core]System.Linq.Expressions.Expression::Constant(object,
                                                                                                                                                   class [mscorlib]System.Type)
      IL_0051:  stloc.2
      IL_0052:  br.s       IL_0054

      IL_0054:  ldloc.2
      IL_0055:  ret
    } // end of method SubtreeEvaluator::Evaluate

  } // end of class SubtreeEvaluator

  .class auto ansi nested private beforefieldinit Nominator
         extends NHibernate.Linq.Visitors.ExpressionVisitor
  {
    .field private class [System.Core]System.Func`2<class [System.Core]System.Linq.Expressions.Expression,bool> fnCanBeEvaluated
    .field private class [System.Core]System.Collections.Generic.HashSet`1<class [System.Core]System.Linq.Expressions.Expression> candidates
    .field private bool cannotBeEvaluated
    .method assembly hidebysig specialname rtspecialname 
            instance void  .ctor(class [System.Core]System.Func`2<class [System.Core]System.Linq.Expressions.Expression,bool> fnCanBeEvaluated) cil managed
    {
      // Code size       17 (0x11)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void NHibernate.Linq.Visitors.ExpressionVisitor::.ctor()
      IL_0006:  nop
      IL_0007:  nop
      IL_0008:  ldarg.0
      IL_0009:  ldarg.1
      IL_000a:  stfld      class [System.Core]System.Func`2<class [System.Core]System.Linq.Expressions.Expression,bool> NHibernate.Linq.Visitors.Evaluator/Nominator::fnCanBeEvaluated
      IL_000f:  nop
      IL_0010:  ret
    } // end of method Nominator::.ctor

    .method assembly hidebysig instance class [System.Core]System.Collections.Generic.HashSet`1<class [System.Core]System.Linq.Expressions.Expression> 
            Nominate(class [System.Core]System.Linq.Expressions.Expression expression) cil managed
    {
      // Code size       31 (0x1f)
      .maxstack  2
      .locals init (class [System.Core]System.Collections.Generic.HashSet`1<class [System.Core]System.Linq.Expressions.Expression> V_0)
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  newobj     instance void class [System.Core]System.Collections.Generic.HashSet`1<class [System.Core]System.Linq.Expressions.Expression>::.ctor()
      IL_0007:  stfld      class [System.Core]System.Collections.Generic.HashSet`1<class [System.Core]System.Linq.Expressions.Expression> NHibernate.Linq.Visitors.Evaluator/Nominator::candidates
      IL_000c:  ldarg.0
      IL_000d:  ldarg.1
      IL_000e:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
      IL_0013:  pop
      IL_0014:  ldarg.0
      IL_0015:  ldfld      class [System.Core]System.Collections.Generic.HashSet`1<class [System.Core]System.Linq.Expressions.Expression> NHibernate.Linq.Visitors.Evaluator/Nominator::candidates
      IL_001a:  stloc.0
      IL_001b:  br.s       IL_001d

      IL_001d:  ldloc.0
      IL_001e:  ret
    } // end of method Nominator::Nominate

    .method public hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
            Visit(class [System.Core]System.Linq.Expressions.Expression expression) cil managed
    {
      // Code size       110 (0x6e)
      .maxstack  3
      .locals init (bool V_0,
               class [System.Core]System.Linq.Expressions.Expression V_1,
               bool V_2)
      IL_0000:  nop
      IL_0001:  ldarg.1
      IL_0002:  ldnull
      IL_0003:  ceq
      IL_0005:  stloc.2
      IL_0006:  ldloc.2
      IL_0007:  brtrue.s   IL_0068

      IL_0009:  nop
      IL_000a:  ldarg.0
      IL_000b:  ldfld      bool NHibernate.Linq.Visitors.Evaluator/Nominator::cannotBeEvaluated
      IL_0010:  stloc.0
      IL_0011:  ldarg.0
      IL_0012:  ldc.i4.0
      IL_0013:  stfld      bool NHibernate.Linq.Visitors.Evaluator/Nominator::cannotBeEvaluated
      IL_0018:  ldarg.0
      IL_0019:  ldarg.1
      IL_001a:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
      IL_001f:  pop
      IL_0020:  ldarg.0
      IL_0021:  ldfld      bool NHibernate.Linq.Visitors.Evaluator/Nominator::cannotBeEvaluated
      IL_0026:  stloc.2
      IL_0027:  ldloc.2
      IL_0028:  brtrue.s   IL_0059

      IL_002a:  nop
      IL_002b:  ldarg.0
      IL_002c:  ldfld      class [System.Core]System.Func`2<class [System.Core]System.Linq.Expressions.Expression,bool> NHibernate.Linq.Visitors.Evaluator/Nominator::fnCanBeEvaluated
      IL_0031:  ldarg.1
      IL_0032:  callvirt   instance !1 class [System.Core]System.Func`2<class [System.Core]System.Linq.Expressions.Expression,bool>::Invoke(!0)
      IL_0037:  ldc.i4.0
      IL_0038:  ceq
      IL_003a:  stloc.2
      IL_003b:  ldloc.2
      IL_003c:  brtrue.s   IL_004f

      IL_003e:  nop
      IL_003f:  ldarg.0
      IL_0040:  ldfld      class [System.Core]System.Collections.Generic.HashSet`1<class [System.Core]System.Linq.Expressions.Expression> NHibernate.Linq.Visitors.Evaluator/Nominator::candidates
      IL_0045:  ldarg.1
      IL_0046:  callvirt   instance bool class [System.Core]System.Collections.Generic.HashSet`1<class [System.Core]System.Linq.Expressions.Expression>::Add(!0)
      IL_004b:  pop
      IL_004c:  nop
      IL_004d:  br.s       IL_0058

      IL_004f:  nop
      IL_0050:  ldarg.0
      IL_0051:  ldc.i4.1
      IL_0052:  stfld      bool NHibernate.Linq.Visitors.Evaluator/Nominator::cannotBeEvaluated
      IL_0057:  nop
      IL_0058:  nop
      IL_0059:  ldarg.0
      IL_005a:  dup
      IL_005b:  ldfld      bool NHibernate.Linq.Visitors.Evaluator/Nominator::cannotBeEvaluated
      IL_0060:  ldloc.0
      IL_0061:  or
      IL_0062:  stfld      bool NHibernate.Linq.Visitors.Evaluator/Nominator::cannotBeEvaluated
      IL_0067:  nop
      IL_0068:  ldarg.1
      IL_0069:  stloc.1
      IL_006a:  br.s       IL_006c

      IL_006c:  ldloc.1
      IL_006d:  ret
    } // end of method Nominator::Visit

  } // end of class Nominator

  .method public hidebysig static class [System.Core]System.Linq.Expressions.Expression 
          PartialEval(class [System.Core]System.Linq.Expressions.Expression expression,
                      class [System.Core]System.Func`2<class [System.Core]System.Linq.Expressions.Expression,bool> fnCanBeEvaluated) cil managed
  {
    // Code size       29 (0x1d)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  newobj     instance void NHibernate.Linq.Visitors.Evaluator/Nominator::.ctor(class [System.Core]System.Func`2<class [System.Core]System.Linq.Expressions.Expression,bool>)
    IL_0007:  ldarg.0
    IL_0008:  call       instance class [System.Core]System.Collections.Generic.HashSet`1<class [System.Core]System.Linq.Expressions.Expression> NHibernate.Linq.Visitors.Evaluator/Nominator::Nominate(class [System.Core]System.Linq.Expressions.Expression)
    IL_000d:  newobj     instance void NHibernate.Linq.Visitors.Evaluator/SubtreeEvaluator::.ctor(class [System.Core]System.Collections.Generic.HashSet`1<class [System.Core]System.Linq.Expressions.Expression>)
    IL_0012:  ldarg.0
    IL_0013:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.Evaluator/SubtreeEvaluator::Eval(class [System.Core]System.Linq.Expressions.Expression)
    IL_0018:  stloc.0
    IL_0019:  br.s       IL_001b

    IL_001b:  ldloc.0
    IL_001c:  ret
  } // end of method Evaluator::PartialEval

  .method public hidebysig static class [System.Core]System.Linq.Expressions.Expression 
          PartialEval(class [System.Core]System.Linq.Expressions.Expression expression) cil managed
  {
    // Code size       24 (0x18)
    .maxstack  4
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldnull
    IL_0003:  ldftn      bool NHibernate.Linq.Visitors.Evaluator::CanBeEvaluatedLocally(class [System.Core]System.Linq.Expressions.Expression)
    IL_0009:  newobj     instance void class [System.Core]System.Func`2<class [System.Core]System.Linq.Expressions.Expression,bool>::.ctor(object,
                                                                                                                                           native int)
    IL_000e:  call       class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.Evaluator::PartialEval(class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                               class [System.Core]System.Func`2<class [System.Core]System.Linq.Expressions.Expression,bool>)
    IL_0013:  stloc.0
    IL_0014:  br.s       IL_0016

    IL_0016:  ldloc.0
    IL_0017:  ret
  } // end of method Evaluator::PartialEval

  .method private hidebysig static bool  CanBeEvaluatedLocally(class [System.Core]System.Linq.Expressions.Expression expression) cil managed
  {
    // Code size       62 (0x3e)
    .maxstack  2
    .locals init (bool V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.ExpressionType [System.Core]System.Linq.Expressions.Expression::get_NodeType()
    IL_0007:  ldc.i4.s   9
    IL_0009:  ceq
    IL_000b:  ldc.i4.0
    IL_000c:  ceq
    IL_000e:  stloc.1
    IL_000f:  ldloc.1
    IL_0010:  brtrue.s   IL_002c

    IL_0012:  nop
    IL_0013:  ldarg.0
    IL_0014:  castclass  [System.Core]System.Linq.Expressions.ConstantExpression
    IL_0019:  callvirt   instance object [System.Core]System.Linq.Expressions.ConstantExpression::get_Value()
    IL_001e:  isinst     [System.Core]System.Linq.IQueryable
    IL_0023:  ldnull
    IL_0024:  cgt.un
    IL_0026:  ldc.i4.0
    IL_0027:  ceq
    IL_0029:  stloc.0
    IL_002a:  br.s       IL_003c

    IL_002c:  ldarg.0
    IL_002d:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.ExpressionType [System.Core]System.Linq.Expressions.Expression::get_NodeType()
    IL_0032:  ldc.i4.s   38
    IL_0034:  ceq
    IL_0036:  ldc.i4.0
    IL_0037:  ceq
    IL_0039:  stloc.0
    IL_003a:  br.s       IL_003c

    IL_003c:  ldloc.0
    IL_003d:  ret
  } // end of method Evaluator::CanBeEvaluatedLocally

} // end of class NHibernate.Linq.Visitors.Evaluator

.class public auto ansi beforefieldinit NHibernate.Linq.Visitors.GroupingArgumentsVisitor
       extends NHibernate.Linq.Visitors.NHibernateExpressionVisitor
{
  .field private initonly class [NHibernate]NHibernate.ICriteria _rootCriteria
  .field private initonly class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> _projections
  .method public hidebysig specialname instance class [NHibernate]NHibernate.Criterion.IProjection 
          get_Projection() cil managed
  {
    // Code size       135 (0x87)
    .maxstack  2
    .locals init (class [NHibernate]NHibernate.Criterion.ProjectionList V_0,
             class [NHibernate]NHibernate.Criterion.IProjection V_1,
             class [NHibernate]NHibernate.Criterion.IProjection V_2,
             bool V_3,
             valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [NHibernate]NHibernate.Criterion.IProjection> V_4)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.GroupingArgumentsVisitor::_projections
    IL_0007:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::get_Count()
    IL_000c:  ldc.i4.0
    IL_000d:  ceq
    IL_000f:  ldc.i4.0
    IL_0010:  ceq
    IL_0012:  stloc.3
    IL_0013:  ldloc.3
    IL_0014:  brtrue.s   IL_001a

    IL_0016:  ldnull
    IL_0017:  stloc.2
    IL_0018:  br.s       IL_0085

    IL_001a:  ldarg.0
    IL_001b:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.GroupingArgumentsVisitor::_projections
    IL_0020:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::get_Count()
    IL_0025:  ldc.i4.1
    IL_0026:  ceq
    IL_0028:  ldc.i4.0
    IL_0029:  ceq
    IL_002b:  stloc.3
    IL_002c:  ldloc.3
    IL_002d:  brtrue.s   IL_003e

    IL_002f:  ldarg.0
    IL_0030:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.GroupingArgumentsVisitor::_projections
    IL_0035:  ldc.i4.0
    IL_0036:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::get_Item(int32)
    IL_003b:  stloc.2
    IL_003c:  br.s       IL_0085

    IL_003e:  call       class [NHibernate]NHibernate.Criterion.ProjectionList [NHibernate]NHibernate.Criterion.Projections::ProjectionList()
    IL_0043:  stloc.0
    IL_0044:  nop
    IL_0045:  ldarg.0
    IL_0046:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.GroupingArgumentsVisitor::_projections
    IL_004b:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::GetEnumerator()
    IL_0050:  stloc.s    V_4
    .try
    {
      IL_0052:  br.s       IL_0064

      IL_0054:  ldloca.s   V_4
      IL_0056:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [NHibernate]NHibernate.Criterion.IProjection>::get_Current()
      IL_005b:  stloc.1
      IL_005c:  ldloc.0
      IL_005d:  ldloc.1
      IL_005e:  callvirt   instance class [NHibernate]NHibernate.Criterion.ProjectionList [NHibernate]NHibernate.Criterion.ProjectionList::Add(class [NHibernate]NHibernate.Criterion.IProjection)
      IL_0063:  pop
      IL_0064:  ldloca.s   V_4
      IL_0066:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [NHibernate]NHibernate.Criterion.IProjection>::MoveNext()
      IL_006b:  stloc.3
      IL_006c:  ldloc.3
      IL_006d:  brtrue.s   IL_0054

      IL_006f:  leave.s    IL_0080

    }  // end .try
    finally
    {
      IL_0071:  ldloca.s   V_4
      IL_0073:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [NHibernate]NHibernate.Criterion.IProjection>
      IL_0079:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_007e:  nop
      IL_007f:  endfinally
    }  // end handler
    IL_0080:  nop
    IL_0081:  ldloc.0
    IL_0082:  stloc.2
    IL_0083:  br.s       IL_0085

    IL_0085:  ldloc.2
    IL_0086:  ret
  } // end of method GroupingArgumentsVisitor::get_Projection

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [NHibernate]NHibernate.ICriteria rootCriteria) cil managed
  {
    // Code size       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::.ctor()
    IL_0006:  stfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.GroupingArgumentsVisitor::_projections
    IL_000b:  ldarg.0
    IL_000c:  call       instance void NHibernate.Linq.Visitors.NHibernateExpressionVisitor::.ctor()
    IL_0011:  nop
    IL_0012:  nop
    IL_0013:  ldarg.0
    IL_0014:  ldarg.1
    IL_0015:  stfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.GroupingArgumentsVisitor::_rootCriteria
    IL_001a:  nop
    IL_001b:  ret
  } // end of method GroupingArgumentsVisitor::.ctor

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitPropertyAccess(class NHibernate.Linq.Expressions.PropertyAccessExpression expr) cil managed
  {
    // Code size       38 (0x26)
    .maxstack  2
    .locals init (string V_0,
             class [System.Core]System.Linq.Expressions.Expression V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.GroupingArgumentsVisitor::_rootCriteria
    IL_0007:  ldarg.1
    IL_0008:  call       string NHibernate.Linq.Visitors.MemberNameVisitor::GetMemberName(class [NHibernate]NHibernate.ICriteria,
                                                                                          class [System.Core]System.Linq.Expressions.Expression)
    IL_000d:  stloc.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.GroupingArgumentsVisitor::_projections
    IL_0014:  ldloc.0
    IL_0015:  call       class [NHibernate]NHibernate.Criterion.PropertyProjection [NHibernate]NHibernate.Criterion.Projections::GroupProperty(string)
    IL_001a:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::Add(!0)
    IL_001f:  nop
    IL_0020:  ldarg.1
    IL_0021:  stloc.1
    IL_0022:  br.s       IL_0024

    IL_0024:  ldloc.1
    IL_0025:  ret
  } // end of method GroupingArgumentsVisitor::VisitPropertyAccess

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitCollectionAccess(class NHibernate.Linq.Expressions.CollectionAccessExpression expr) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.NHibernateExpressionVisitor::VisitPropertyAccess(class NHibernate.Linq.Expressions.PropertyAccessExpression)
    IL_0008:  stloc.0
    IL_0009:  br.s       IL_000b

    IL_000b:  ldloc.0
    IL_000c:  ret
  } // end of method GroupingArgumentsVisitor::VisitCollectionAccess

  .property instance class [NHibernate]NHibernate.Criterion.IProjection
          Projection()
  {
    .get instance class [NHibernate]NHibernate.Criterion.IProjection NHibernate.Linq.Visitors.GroupingArgumentsVisitor::get_Projection()
  } // end of property GroupingArgumentsVisitor::Projection
} // end of class NHibernate.Linq.Visitors.GroupingArgumentsVisitor

.class interface public abstract auto ansi NHibernate.Linq.Visitors.IImmediateResultsVisitor
{
  .method public hidebysig newslot abstract virtual 
          instance object  GetResults(class [System.Core]System.Linq.Expressions.MethodCallExpression expr) cil managed
  {
  } // end of method IImmediateResultsVisitor::GetResults

} // end of class NHibernate.Linq.Visitors.IImmediateResultsVisitor

.class public auto ansi beforefieldinit NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<T>
       extends NHibernate.Linq.Visitors.NHibernateExpressionVisitor
       implements NHibernate.Linq.Visitors.IImmediateResultsVisitor
{
  .field private initonly class [NHibernate]NHibernate.ISession session
  .field private initonly class [NHibernate]NHibernate.ICriteria rootCriteria
  .field private !T results
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [NHibernate]NHibernate.ISession session,
                               class [NHibernate]NHibernate.ICriteria rootCriteria) cil managed
  {
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void NHibernate.Linq.Visitors.NHibernateExpressionVisitor::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [NHibernate]NHibernate.ISession class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::session
    IL_000f:  ldarg.0
    IL_0010:  ldarg.2
    IL_0011:  stfld      class [NHibernate]NHibernate.ICriteria class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::rootCriteria
    IL_0016:  nop
    IL_0017:  ret
  } // end of method ImmediateResultsVisitor`1::.ctor

  .method public hidebysig newslot virtual final 
          instance object  GetResults(class [System.Core]System.Linq.Expressions.MethodCallExpression expr) cil managed
  {
    // Code size       25 (0x19)
    .maxstack  2
    .locals init (object V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0008:  pop
    IL_0009:  ldarg.0
    IL_000a:  ldfld      !0 class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::results
    IL_000f:  box        !T
    IL_0014:  stloc.0
    IL_0015:  br.s       IL_0017

    IL_0017:  ldloc.0
    IL_0018:  ret
  } // end of method ImmediateResultsVisitor`1::GetResults

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitMethodCall(class [System.Core]System.Linq.Expressions.MethodCallExpression 'call') cil managed
  {
    // Code size       426 (0x1aa)
    .maxstack  4
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             string V_1,
             int32 V_2)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [System.Core]System.Linq.Expressions.MethodCallExpression::get_Method()
    IL_0007:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_000c:  stloc.1
    IL_000d:  ldloc.1
    IL_000e:  brfalse    IL_0184

    IL_0013:  volatile.
    IL_0015:  ldsfld     class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32> '<PrivateImplementationDetails>{F233971D-B03F-42A4-937F-644633406AC4}'::'$$method0x6000133-1'
    IL_001a:  brtrue     IL_00c0

    IL_001f:  ldc.i4.s   12
    IL_0021:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::.ctor(int32)
    IL_0026:  dup
    IL_0027:  ldstr      "First"
    IL_002c:  ldc.i4.0
    IL_002d:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_0032:  dup
    IL_0033:  ldstr      "FirstOrDefault"
    IL_0038:  ldc.i4.1
    IL_0039:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_003e:  dup
    IL_003f:  ldstr      "Single"
    IL_0044:  ldc.i4.2
    IL_0045:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_004a:  dup
    IL_004b:  ldstr      "SingleOrDefault"
    IL_0050:  ldc.i4.3
    IL_0051:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_0056:  dup
    IL_0057:  ldstr      "Aggregate"
    IL_005c:  ldc.i4.4
    IL_005d:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_0062:  dup
    IL_0063:  ldstr      "Average"
    IL_0068:  ldc.i4.5
    IL_0069:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_006e:  dup
    IL_006f:  ldstr      "Count"
    IL_0074:  ldc.i4.6
    IL_0075:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_007a:  dup
    IL_007b:  ldstr      "LongCount"
    IL_0080:  ldc.i4.7
    IL_0081:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_0086:  dup
    IL_0087:  ldstr      "Max"
    IL_008c:  ldc.i4.8
    IL_008d:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_0092:  dup
    IL_0093:  ldstr      "Min"
    IL_0098:  ldc.i4.s   9
    IL_009a:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_009f:  dup
    IL_00a0:  ldstr      "Sum"
    IL_00a5:  ldc.i4.s   10
    IL_00a7:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_00ac:  dup
    IL_00ad:  ldstr      "Any"
    IL_00b2:  ldc.i4.s   11
    IL_00b4:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_00b9:  volatile.
    IL_00bb:  stsfld     class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32> '<PrivateImplementationDetails>{F233971D-B03F-42A4-937F-644633406AC4}'::'$$method0x6000133-1'
    IL_00c0:  volatile.
    IL_00c2:  ldsfld     class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32> '<PrivateImplementationDetails>{F233971D-B03F-42A4-937F-644633406AC4}'::'$$method0x6000133-1'
    IL_00c7:  ldloc.1
    IL_00c8:  ldloca.s   V_2
    IL_00ca:  call       instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::TryGetValue(!0,
                                                                                                                          !1&)
    IL_00cf:  brfalse    IL_0184

    IL_00d4:  ldloc.2
    IL_00d5:  switch     ( 
                          IL_010c,
                          IL_011e,
                          IL_012d,
                          IL_013c,
                          IL_014b,
                          IL_015a,
                          IL_015a,
                          IL_015a,
                          IL_015a,
                          IL_015a,
                          IL_015a,
                          IL_0175)
    IL_010a:  br.s       IL_0184

    IL_010c:  ldarg.0
    IL_010d:  ldarg.0
    IL_010e:  ldarg.1
    IL_010f:  call       instance !0 class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::HandleFirstCall(class [System.Core]System.Linq.Expressions.MethodCallExpression)
    IL_0114:  stfld      !0 class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::results
    IL_0119:  br         IL_01a4

    IL_011e:  ldarg.0
    IL_011f:  ldarg.0
    IL_0120:  ldarg.1
    IL_0121:  call       instance !0 class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::HandleFirstOrDefaultCall(class [System.Core]System.Linq.Expressions.MethodCallExpression)
    IL_0126:  stfld      !0 class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::results
    IL_012b:  br.s       IL_01a4

    IL_012d:  ldarg.0
    IL_012e:  ldarg.0
    IL_012f:  ldarg.1
    IL_0130:  call       instance !0 class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::HandleSingleCall(class [System.Core]System.Linq.Expressions.MethodCallExpression)
    IL_0135:  stfld      !0 class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::results
    IL_013a:  br.s       IL_01a4

    IL_013c:  ldarg.0
    IL_013d:  ldarg.0
    IL_013e:  ldarg.1
    IL_013f:  call       instance !0 class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::HandleSingleOrDefaultCall(class [System.Core]System.Linq.Expressions.MethodCallExpression)
    IL_0144:  stfld      !0 class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::results
    IL_0149:  br.s       IL_01a4

    IL_014b:  ldarg.0
    IL_014c:  ldarg.0
    IL_014d:  ldarg.1
    IL_014e:  call       instance !0 class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::HandleAggregateCallback(class [System.Core]System.Linq.Expressions.MethodCallExpression)
    IL_0153:  stfld      !0 class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::results
    IL_0158:  br.s       IL_01a4

    IL_015a:  ldarg.0
    IL_015b:  ldfld      class [NHibernate]NHibernate.ICriteria class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::rootCriteria
    IL_0160:  callvirt   instance void [NHibernate]NHibernate.ICriteria::ClearOrders()
    IL_0165:  nop
    IL_0166:  ldarg.0
    IL_0167:  ldarg.0
    IL_0168:  ldarg.1
    IL_0169:  call       instance !0 class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::HandleAggregateCall(class [System.Core]System.Linq.Expressions.MethodCallExpression)
    IL_016e:  stfld      !0 class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::results
    IL_0173:  br.s       IL_01a4

    IL_0175:  ldarg.0
    IL_0176:  ldarg.0
    IL_0177:  ldarg.1
    IL_0178:  call       instance !0 class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::HandleAnyCall(class [System.Core]System.Linq.Expressions.MethodCallExpression)
    IL_017d:  stfld      !0 class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::results
    IL_0182:  br.s       IL_01a4

    IL_0184:  ldstr      "The method "
    IL_0189:  ldarg.1
    IL_018a:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [System.Core]System.Linq.Expressions.MethodCallExpression::get_Method()
    IL_018f:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_0194:  ldstr      " is not implemented."
    IL_0199:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_019e:  newobj     instance void [mscorlib]System.NotImplementedException::.ctor(string)
    IL_01a3:  throw

    IL_01a4:  ldarg.1
    IL_01a5:  stloc.0
    IL_01a6:  br.s       IL_01a8

    IL_01a8:  ldloc.0
    IL_01a9:  ret
  } // end of method ImmediateResultsVisitor`1::VisitMethodCall

  .method private hidebysig instance !T  HandleFirstCall(class [System.Core]System.Linq.Expressions.MethodCallExpression 'call') cil managed
  {
    // Code size       19 (0x13)
    .maxstack  3
    .locals init (!T V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldc.i4.1
    IL_0004:  call       instance class [mscorlib]System.Collections.Generic.IList`1<!0> class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::GetElementList(class [System.Core]System.Linq.Expressions.MethodCallExpression,
                                                                                                                                                                      int32)
    IL_0009:  call       !!0 [System.Core]System.Linq.Enumerable::First<!T>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_000e:  stloc.0
    IL_000f:  br.s       IL_0011

    IL_0011:  ldloc.0
    IL_0012:  ret
  } // end of method ImmediateResultsVisitor`1::HandleFirstCall

  .method private hidebysig instance !T  HandleFirstOrDefaultCall(class [System.Core]System.Linq.Expressions.MethodCallExpression 'call') cil managed
  {
    // Code size       19 (0x13)
    .maxstack  3
    .locals init (!T V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldc.i4.1
    IL_0004:  call       instance class [mscorlib]System.Collections.Generic.IList`1<!0> class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::GetElementList(class [System.Core]System.Linq.Expressions.MethodCallExpression,
                                                                                                                                                                      int32)
    IL_0009:  call       !!0 [System.Core]System.Linq.Enumerable::FirstOrDefault<!T>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_000e:  stloc.0
    IL_000f:  br.s       IL_0011

    IL_0011:  ldloc.0
    IL_0012:  ret
  } // end of method ImmediateResultsVisitor`1::HandleFirstOrDefaultCall

  .method private hidebysig instance !T  HandleSingleCall(class [System.Core]System.Linq.Expressions.MethodCallExpression 'call') cil managed
  {
    // Code size       19 (0x13)
    .maxstack  3
    .locals init (!T V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldc.i4.2
    IL_0004:  call       instance class [mscorlib]System.Collections.Generic.IList`1<!0> class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::GetElementList(class [System.Core]System.Linq.Expressions.MethodCallExpression,
                                                                                                                                                                      int32)
    IL_0009:  call       !!0 [System.Core]System.Linq.Enumerable::Single<!T>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_000e:  stloc.0
    IL_000f:  br.s       IL_0011

    IL_0011:  ldloc.0
    IL_0012:  ret
  } // end of method ImmediateResultsVisitor`1::HandleSingleCall

  .method private hidebysig instance !T  HandleSingleOrDefaultCall(class [System.Core]System.Linq.Expressions.MethodCallExpression 'call') cil managed
  {
    // Code size       19 (0x13)
    .maxstack  3
    .locals init (!T V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldc.i4.2
    IL_0004:  call       instance class [mscorlib]System.Collections.Generic.IList`1<!0> class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::GetElementList(class [System.Core]System.Linq.Expressions.MethodCallExpression,
                                                                                                                                                                      int32)
    IL_0009:  call       !!0 [System.Core]System.Linq.Enumerable::SingleOrDefault<!T>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_000e:  stloc.0
    IL_000f:  br.s       IL_0011

    IL_0011:  ldloc.0
    IL_0012:  ret
  } // end of method ImmediateResultsVisitor`1::HandleSingleOrDefaultCall

  .method private hidebysig instance class [mscorlib]System.Collections.Generic.IList`1<!T> 
          GetElementList(class [System.Core]System.Linq.Expressions.MethodCallExpression 'call',
                         int32 count) cil managed
  {
    // Code size       91 (0x5b)
    .maxstack  5
    .locals init (class [mscorlib]System.Collections.Generic.IList`1<!T> V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0007:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Count()
    IL_000c:  ldc.i4.1
    IL_000d:  cgt
    IL_000f:  ldc.i4.0
    IL_0010:  ceq
    IL_0012:  stloc.1
    IL_0013:  ldloc.1
    IL_0014:  brtrue.s   IL_003f

    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [NHibernate]NHibernate.ICriteria class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::rootCriteria
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class [NHibernate]NHibernate.ICriteria class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::rootCriteria
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [NHibernate]NHibernate.ISession class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::session
    IL_0028:  ldarg.1
    IL_0029:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_002e:  ldc.i4.1
    IL_002f:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_0034:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::GetCriterion(class [NHibernate]NHibernate.ICriteria,
                                                                                                                                                                                                  class [NHibernate]NHibernate.ISession,
                                                                                                                                                                                                  class [System.Core]System.Linq.Expressions.Expression)
    IL_0039:  call       void NHibernate.Linq.Util.CriteriaUtil::Add(class [NHibernate]NHibernate.ICriteria,
                                                                     class [mscorlib]System.Collections.Generic.IEnumerable`1<class [NHibernate]NHibernate.Criterion.ICriterion>)
    IL_003e:  nop
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class [NHibernate]NHibernate.ICriteria class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::rootCriteria
    IL_0045:  ldc.i4.0
    IL_0046:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::SetFirstResult(int32)
    IL_004b:  ldarg.2
    IL_004c:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::SetMaxResults(int32)
    IL_0051:  callvirt   instance class [mscorlib]System.Collections.Generic.IList`1<!!0> [NHibernate]NHibernate.ICriteria::List<!T>()
    IL_0056:  stloc.0
    IL_0057:  br.s       IL_0059

    IL_0059:  ldloc.0
    IL_005a:  ret
  } // end of method ImmediateResultsVisitor`1::GetElementList

  .method private hidebysig instance !T  HandleAggregateCallback(class [System.Core]System.Linq.Expressions.MethodCallExpression 'call') cil managed
  {
    // Code size       442 (0x1ba)
    .maxstack  6
    .locals init (class [System.Core]System.Linq.Expressions.LambdaExpression V_0,
             class [mscorlib]System.Type V_1,
             class [mscorlib]System.Collections.IList V_2,
             class [mscorlib]System.Reflection.MethodInfo V_3,
             class [mscorlib]System.Collections.IEnumerable V_4,
             !T V_5,
             class [mscorlib]System.Type[] V_6,
             object[] V_7,
             bool V_8)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_000d:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Count()
    IL_0012:  ldc.i4.1
    IL_0013:  sub
    IL_0014:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_0019:  call       class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Util.LinqUtil::StripQuotes(class [System.Core]System.Linq.Expressions.Expression)
    IL_001e:  castclass  [System.Core]System.Linq.Expressions.LambdaExpression
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.ParameterExpression> [System.Core]System.Linq.Expressions.LambdaExpression::get_Parameters()
    IL_002a:  ldc.i4.1
    IL_002b:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.ParameterExpression>::get_Item(int32)
    IL_0030:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_0035:  stloc.1
    IL_0036:  ldarg.0
    IL_0037:  ldfld      class [NHibernate]NHibernate.ICriteria class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::rootCriteria
    IL_003c:  callvirt   instance class [mscorlib]System.Collections.IList [NHibernate]NHibernate.ICriteria::List()
    IL_0041:  stloc.2
    IL_0042:  ldtoken    [System.Core]System.Linq.Enumerable
    IL_0047:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_004c:  ldstr      "Cast"
    IL_0051:  call       instance class [mscorlib]System.Reflection.MethodInfo [mscorlib]System.Type::GetMethod(string)
    IL_0056:  ldc.i4.1
    IL_0057:  newarr     [mscorlib]System.Type
    IL_005c:  stloc.s    V_6
    IL_005e:  ldloc.s    V_6
    IL_0060:  ldc.i4.0
    IL_0061:  ldloc.1
    IL_0062:  stelem.ref
    IL_0063:  ldloc.s    V_6
    IL_0065:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [mscorlib]System.Reflection.MethodInfo::MakeGenericMethod(class [mscorlib]System.Type[])
    IL_006a:  stloc.3
    IL_006b:  ldloc.3
    IL_006c:  ldnull
    IL_006d:  ldc.i4.1
    IL_006e:  newarr     [mscorlib]System.Object
    IL_0073:  stloc.s    V_7
    IL_0075:  ldloc.s    V_7
    IL_0077:  ldc.i4.0
    IL_0078:  ldloc.2
    IL_0079:  stelem.ref
    IL_007a:  ldloc.s    V_7
    IL_007c:  callvirt   instance object [mscorlib]System.Reflection.MethodBase::Invoke(object,
                                                                                        object[])
    IL_0081:  castclass  [mscorlib]System.Collections.IEnumerable
    IL_0086:  stloc.s    V_4
    IL_0088:  ldarg.1
    IL_0089:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_008e:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Count()
    IL_0093:  ldc.i4.2
    IL_0094:  ceq
    IL_0096:  ldc.i4.0
    IL_0097:  ceq
    IL_0099:  stloc.s    V_8
    IL_009b:  ldloc.s    V_8
    IL_009d:  brtrue.s   IL_00d2

    IL_009f:  nop
    IL_00a0:  ldarg.1
    IL_00a1:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [System.Core]System.Linq.Expressions.MethodCallExpression::get_Method()
    IL_00a6:  ldnull
    IL_00a7:  ldc.i4.2
    IL_00a8:  newarr     [mscorlib]System.Object
    IL_00ad:  stloc.s    V_7
    IL_00af:  ldloc.s    V_7
    IL_00b1:  ldc.i4.0
    IL_00b2:  ldloc.s    V_4
    IL_00b4:  call       class [System.Core]System.Linq.IQueryable [System.Core]System.Linq.Queryable::AsQueryable(class [mscorlib]System.Collections.IEnumerable)
    IL_00b9:  stelem.ref
    IL_00ba:  ldloc.s    V_7
    IL_00bc:  ldc.i4.1
    IL_00bd:  ldloc.0
    IL_00be:  stelem.ref
    IL_00bf:  ldloc.s    V_7
    IL_00c1:  callvirt   instance object [mscorlib]System.Reflection.MethodBase::Invoke(object,
                                                                                        object[])
    IL_00c6:  unbox.any  !T
    IL_00cb:  stloc.s    V_5
    IL_00cd:  br         IL_01b7

    IL_00d2:  ldarg.1
    IL_00d3:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_00d8:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Count()
    IL_00dd:  ldc.i4.3
    IL_00de:  ceq
    IL_00e0:  ldc.i4.0
    IL_00e1:  ceq
    IL_00e3:  stloc.s    V_8
    IL_00e5:  ldloc.s    V_8
    IL_00e7:  brtrue.s   IL_0136

    IL_00e9:  nop
    IL_00ea:  ldarg.1
    IL_00eb:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [System.Core]System.Linq.Expressions.MethodCallExpression::get_Method()
    IL_00f0:  ldnull
    IL_00f1:  ldc.i4.3
    IL_00f2:  newarr     [mscorlib]System.Object
    IL_00f7:  stloc.s    V_7
    IL_00f9:  ldloc.s    V_7
    IL_00fb:  ldc.i4.0
    IL_00fc:  ldloc.s    V_4
    IL_00fe:  call       class [System.Core]System.Linq.IQueryable [System.Core]System.Linq.Queryable::AsQueryable(class [mscorlib]System.Collections.IEnumerable)
    IL_0103:  stelem.ref
    IL_0104:  ldloc.s    V_7
    IL_0106:  ldc.i4.1
    IL_0107:  ldarg.1
    IL_0108:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_010d:  ldc.i4.1
    IL_010e:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_0113:  castclass  [System.Core]System.Linq.Expressions.ConstantExpression
    IL_0118:  callvirt   instance object [System.Core]System.Linq.Expressions.ConstantExpression::get_Value()
    IL_011d:  stelem.ref
    IL_011e:  ldloc.s    V_7
    IL_0120:  ldc.i4.2
    IL_0121:  ldloc.0
    IL_0122:  stelem.ref
    IL_0123:  ldloc.s    V_7
    IL_0125:  callvirt   instance object [mscorlib]System.Reflection.MethodBase::Invoke(object,
                                                                                        object[])
    IL_012a:  unbox.any  !T
    IL_012f:  stloc.s    V_5
    IL_0131:  br         IL_01b7

    IL_0136:  ldarg.1
    IL_0137:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_013c:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Count()
    IL_0141:  ldc.i4.4
    IL_0142:  ceq
    IL_0144:  ldc.i4.0
    IL_0145:  ceq
    IL_0147:  stloc.s    V_8
    IL_0149:  ldloc.s    V_8
    IL_014b:  brtrue.s   IL_01ac

    IL_014d:  nop
    IL_014e:  ldarg.1
    IL_014f:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [System.Core]System.Linq.Expressions.MethodCallExpression::get_Method()
    IL_0154:  ldnull
    IL_0155:  ldc.i4.4
    IL_0156:  newarr     [mscorlib]System.Object
    IL_015b:  stloc.s    V_7
    IL_015d:  ldloc.s    V_7
    IL_015f:  ldc.i4.0
    IL_0160:  ldloc.s    V_4
    IL_0162:  call       class [System.Core]System.Linq.IQueryable [System.Core]System.Linq.Queryable::AsQueryable(class [mscorlib]System.Collections.IEnumerable)
    IL_0167:  stelem.ref
    IL_0168:  ldloc.s    V_7
    IL_016a:  ldc.i4.1
    IL_016b:  ldarg.1
    IL_016c:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0171:  ldc.i4.1
    IL_0172:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_0177:  castclass  [System.Core]System.Linq.Expressions.ConstantExpression
    IL_017c:  callvirt   instance object [System.Core]System.Linq.Expressions.ConstantExpression::get_Value()
    IL_0181:  stelem.ref
    IL_0182:  ldloc.s    V_7
    IL_0184:  ldc.i4.2
    IL_0185:  ldarg.1
    IL_0186:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_018b:  ldc.i4.2
    IL_018c:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_0191:  call       class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Util.LinqUtil::StripQuotes(class [System.Core]System.Linq.Expressions.Expression)
    IL_0196:  stelem.ref
    IL_0197:  ldloc.s    V_7
    IL_0199:  ldc.i4.3
    IL_019a:  ldloc.0
    IL_019b:  stelem.ref
    IL_019c:  ldloc.s    V_7
    IL_019e:  callvirt   instance object [mscorlib]System.Reflection.MethodBase::Invoke(object,
                                                                                        object[])
    IL_01a3:  unbox.any  !T
    IL_01a8:  stloc.s    V_5
    IL_01aa:  br.s       IL_01b7

    IL_01ac:  ldstr      "Invalid number of arguments passed to the Aggregat"
    + "e method."
    IL_01b1:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_01b6:  throw

    IL_01b7:  ldloc.s    V_5
    IL_01b9:  ret
  } // end of method ImmediateResultsVisitor`1::HandleAggregateCallback

  .method private hidebysig instance !T  HandleAggregateCall(class [System.Core]System.Linq.Expressions.MethodCallExpression 'call') cil managed
  {
    // Code size       129 (0x81)
    .maxstack  4
    .locals init (class NHibernate.Linq.Visitors.SelectArgumentsVisitor V_0,
             !T V_1,
             object V_2,
             !T V_3,
             bool V_4,
             class [NHibernate]NHibernate.Criterion.IProjection[] V_5)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ICriteria class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::rootCriteria
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class [NHibernate]NHibernate.ISession class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::session
    IL_000d:  newobj     instance void NHibernate.Linq.Visitors.SelectArgumentsVisitor::.ctor(class [NHibernate]NHibernate.ICriteria,
                                                                                              class [NHibernate]NHibernate.ISession)
    IL_0012:  stloc.0
    IL_0013:  ldloc.0
    IL_0014:  ldarg.1
    IL_0015:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_001a:  pop
    IL_001b:  ldloca.s   V_1
    IL_001d:  initobj    !T
    IL_0023:  ldloc.0
    IL_0024:  callvirt   instance class [NHibernate]NHibernate.Criterion.IProjection NHibernate.Linq.Visitors.SelectArgumentsVisitor::get_Projection()
    IL_0029:  ldnull
    IL_002a:  ceq
    IL_002c:  stloc.s    V_4
    IL_002e:  ldloc.s    V_4
    IL_0030:  brtrue.s   IL_007b

    IL_0032:  nop
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class [NHibernate]NHibernate.ICriteria class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::rootCriteria
    IL_0039:  ldc.i4.1
    IL_003a:  newarr     [NHibernate]NHibernate.Criterion.IProjection
    IL_003f:  stloc.s    V_5
    IL_0041:  ldloc.s    V_5
    IL_0043:  ldc.i4.0
    IL_0044:  ldloc.0
    IL_0045:  callvirt   instance class [NHibernate]NHibernate.Criterion.IProjection NHibernate.Linq.Visitors.SelectArgumentsVisitor::get_Projection()
    IL_004a:  stelem.ref
    IL_004b:  ldloc.s    V_5
    IL_004d:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::SetProjection(class [NHibernate]NHibernate.Criterion.IProjection[])
    IL_0052:  callvirt   instance object [NHibernate]NHibernate.ICriteria::UniqueResult()
    IL_0057:  stloc.2
    IL_0058:  ldloc.2
    IL_0059:  ldnull
    IL_005a:  ceq
    IL_005c:  stloc.s    V_4
    IL_005e:  ldloc.s    V_4
    IL_0060:  brtrue.s   IL_007a

    IL_0062:  nop
    IL_0063:  ldloc.2
    IL_0064:  ldtoken    !T
    IL_0069:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_006e:  call       object NHibernate.Linq.Util.LinqUtil::ChangeType(object,
                                                                          class [mscorlib]System.Type)
    IL_0073:  unbox.any  !T
    IL_0078:  stloc.1
    IL_0079:  nop
    IL_007a:  nop
    IL_007b:  ldloc.1
    IL_007c:  stloc.3
    IL_007d:  br.s       IL_007f

    IL_007f:  ldloc.3
    IL_0080:  ret
  } // end of method ImmediateResultsVisitor`1::HandleAggregateCall

  .method private hidebysig instance !T  HandleAnyCall(class [System.Core]System.Linq.Expressions.MethodCallExpression 'call') cil managed
  {
    // Code size       127 (0x7f)
    .maxstack  5
    .locals init (int32 V_0,
             !T V_1,
             class [NHibernate]NHibernate.Criterion.IProjection[] V_2,
             bool V_3)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ICriteria class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::rootCriteria
    IL_0007:  ldc.i4.1
    IL_0008:  newarr     [NHibernate]NHibernate.Criterion.IProjection
    IL_000d:  stloc.2
    IL_000e:  ldloc.2
    IL_000f:  ldc.i4.0
    IL_0010:  call       class [NHibernate]NHibernate.Criterion.IProjection [NHibernate]NHibernate.Criterion.Projections::RowCount()
    IL_0015:  stelem.ref
    IL_0016:  ldloc.2
    IL_0017:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::SetProjection(class [NHibernate]NHibernate.Criterion.IProjection[])
    IL_001c:  pop
    IL_001d:  ldarg.1
    IL_001e:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0023:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Count()
    IL_0028:  ldc.i4.1
    IL_0029:  cgt
    IL_002b:  ldc.i4.0
    IL_002c:  ceq
    IL_002e:  stloc.3
    IL_002f:  ldloc.3
    IL_0030:  brtrue.s   IL_005b

    IL_0032:  ldarg.0
    IL_0033:  ldfld      class [NHibernate]NHibernate.ICriteria class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::rootCriteria
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class [NHibernate]NHibernate.ICriteria class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::rootCriteria
    IL_003e:  ldarg.0
    IL_003f:  ldfld      class [NHibernate]NHibernate.ISession class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::session
    IL_0044:  ldarg.1
    IL_0045:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_004a:  ldc.i4.1
    IL_004b:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_0050:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::GetCriterion(class [NHibernate]NHibernate.ICriteria,
                                                                                                                                                                                                  class [NHibernate]NHibernate.ISession,
                                                                                                                                                                                                  class [System.Core]System.Linq.Expressions.Expression)
    IL_0055:  call       void NHibernate.Linq.Util.CriteriaUtil::Add(class [NHibernate]NHibernate.ICriteria,
                                                                     class [mscorlib]System.Collections.Generic.IEnumerable`1<class [NHibernate]NHibernate.Criterion.ICriterion>)
    IL_005a:  nop
    IL_005b:  ldarg.0
    IL_005c:  ldfld      class [NHibernate]NHibernate.ICriteria class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1<!T>::rootCriteria
    IL_0061:  callvirt   instance object [NHibernate]NHibernate.ICriteria::UniqueResult()
    IL_0066:  unbox.any  [mscorlib]System.Int32
    IL_006b:  stloc.0
    IL_006c:  ldloc.0
    IL_006d:  ldc.i4.0
    IL_006e:  cgt
    IL_0070:  box        [mscorlib]System.Boolean
    IL_0075:  unbox.any  !T
    IL_007a:  stloc.1
    IL_007b:  br.s       IL_007d

    IL_007d:  ldloc.1
    IL_007e:  ret
  } // end of method ImmediateResultsVisitor`1::HandleAnyCall

} // end of class NHibernate.Linq.Visitors.ImmediateResultsVisitor`1

.class public auto ansi beforefieldinit NHibernate.Linq.Visitors.InheritanceVisitor
       extends NHibernate.Linq.Visitors.NHibernateExpressionVisitor
{
  .field private class [mscorlib]System.Type castedType
  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitQuerySource(class NHibernate.Linq.Expressions.QuerySourceExpression expr) cil managed
  {
    // Code size       52 (0x34)
    .maxstack  4
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [mscorlib]System.Type NHibernate.Linq.Visitors.InheritanceVisitor::castedType
    IL_0007:  ldnull
    IL_0008:  ceq
    IL_000a:  stloc.1
    IL_000b:  ldloc.1
    IL_000c:  brtrue.s   IL_0028

    IL_000e:  ldarg.1
    IL_000f:  callvirt   instance string NHibernate.Linq.Expressions.QuerySourceExpression::get_Alias()
    IL_0014:  ldarg.1
    IL_0015:  callvirt   instance class [System.Core]System.Linq.IQueryable NHibernate.Linq.Expressions.QuerySourceExpression::get_Query()
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class [mscorlib]System.Type NHibernate.Linq.Visitors.InheritanceVisitor::castedType
    IL_0020:  newobj     instance void NHibernate.Linq.Expressions.QuerySourceExpression::.ctor(string,
                                                                                                class [System.Core]System.Linq.IQueryable,
                                                                                                class [mscorlib]System.Type)
    IL_0025:  stloc.0
    IL_0026:  br.s       IL_0032

    IL_0028:  ldarg.0
    IL_0029:  ldarg.1
    IL_002a:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.NHibernateExpressionVisitor::VisitQuerySource(class NHibernate.Linq.Expressions.QuerySourceExpression)
    IL_002f:  stloc.0
    IL_0030:  br.s       IL_0032

    IL_0032:  ldloc.0
    IL_0033:  ret
  } // end of method InheritanceVisitor::VisitQuerySource

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitMethodCall(class [System.Core]System.Linq.Expressions.MethodCallExpression m) cil managed
  {
    // Code size       60 (0x3c)
    .maxstack  3
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [System.Core]System.Linq.Expressions.MethodCallExpression::get_Method()
    IL_0007:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_000c:  ldstr      "OfType"
    IL_0011:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_0016:  ldc.i4.0
    IL_0017:  ceq
    IL_0019:  stloc.1
    IL_001a:  ldloc.1
    IL_001b:  brtrue.s   IL_0030

    IL_001d:  ldarg.0
    IL_001e:  ldarg.1
    IL_001f:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [System.Core]System.Linq.Expressions.MethodCallExpression::get_Method()
    IL_0024:  callvirt   instance class [mscorlib]System.Type[] [mscorlib]System.Reflection.MethodBase::GetGenericArguments()
    IL_0029:  ldc.i4.0
    IL_002a:  ldelem.ref
    IL_002b:  stfld      class [mscorlib]System.Type NHibernate.Linq.Visitors.InheritanceVisitor::castedType
    IL_0030:  ldarg.0
    IL_0031:  ldarg.1
    IL_0032:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::VisitMethodCall(class [System.Core]System.Linq.Expressions.MethodCallExpression)
    IL_0037:  stloc.0
    IL_0038:  br.s       IL_003a

    IL_003a:  ldloc.0
    IL_003b:  ret
  } // end of method InheritanceVisitor::VisitMethodCall

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void NHibernate.Linq.Visitors.NHibernateExpressionVisitor::.ctor()
    IL_0006:  ret
  } // end of method InheritanceVisitor::.ctor

} // end of class NHibernate.Linq.Visitors.InheritanceVisitor

.class public auto ansi beforefieldinit NHibernate.Linq.Visitors.MemberNameVisitor
       extends NHibernate.Linq.Visitors.NHibernateExpressionVisitor
{
  .field private initonly class [NHibernate]NHibernate.ICriteria rootCriteria
  .field private initonly bool createCriteriaForCollections
  .field private class [NHibernate]NHibernate.ICriteria currentCriteria
  .field private class [System.Core]System.Linq.Expressions.Expression currentExpression
  .field private class [mscorlib]System.Text.StringBuilder memberNameBuilder
  .field private string currentAssociationPath
  .field private bool isQueringEntity
  .method public hidebysig specialname instance string 
          get_MemberName() cil managed
  {
    // Code size       74 (0x4a)
    .maxstack  4
    .locals init (string V_0,
             string V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      bool NHibernate.Linq.Visitors.MemberNameVisitor::isQueringEntity
    IL_0007:  brtrue.s   IL_001c

    IL_0009:  ldarg.0
    IL_000a:  ldfld      class [mscorlib]System.Text.StringBuilder NHibernate.Linq.Visitors.MemberNameVisitor::memberNameBuilder
    IL_000f:  callvirt   instance int32 [mscorlib]System.Text.StringBuilder::get_Length()
    IL_0014:  ldc.i4.1
    IL_0015:  clt
    IL_0017:  ldc.i4.0
    IL_0018:  ceq
    IL_001a:  br.s       IL_001d

    IL_001c:  ldc.i4.0
    IL_001d:  stloc.2
    IL_001e:  ldloc.2
    IL_001f:  brtrue.s   IL_002a

    IL_0021:  ldarg.0
    IL_0022:  ldfld      string NHibernate.Linq.Visitors.MemberNameVisitor::currentAssociationPath
    IL_0027:  stloc.1
    IL_0028:  br.s       IL_0048

    IL_002a:  ldarg.0
    IL_002b:  ldfld      class [mscorlib]System.Text.StringBuilder NHibernate.Linq.Visitors.MemberNameVisitor::memberNameBuilder
    IL_0030:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0035:  stloc.0
    IL_0036:  ldloc.0
    IL_0037:  ldc.i4.0
    IL_0038:  ldloc.0
    IL_0039:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_003e:  ldc.i4.1
    IL_003f:  sub
    IL_0040:  callvirt   instance string [mscorlib]System.String::Substring(int32,
                                                                            int32)
    IL_0045:  stloc.1
    IL_0046:  br.s       IL_0048

    IL_0048:  ldloc.1
    IL_0049:  ret
  } // end of method MemberNameVisitor::get_MemberName

  .method public hidebysig specialname instance class [NHibernate]NHibernate.ICriteria 
          get_CurrentCriteria() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (class [NHibernate]NHibernate.ICriteria V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.MemberNameVisitor::currentCriteria
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method MemberNameVisitor::get_CurrentCriteria

  .method public hidebysig specialname instance class [System.Core]System.Linq.Expressions.Expression 
          get_CurrentExpression() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.MemberNameVisitor::currentExpression
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method MemberNameVisitor::get_CurrentExpression

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [NHibernate]NHibernate.ICriteria criteria) cil managed
  {
    // Code size       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.0
    IL_0003:  call       instance void NHibernate.Linq.Visitors.MemberNameVisitor::.ctor(class [NHibernate]NHibernate.ICriteria,
                                                                                         bool)
    IL_0008:  nop
    IL_0009:  nop
    IL_000a:  nop
    IL_000b:  ret
  } // end of method MemberNameVisitor::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [NHibernate]NHibernate.ICriteria criteria,
                               bool createCriteriaForCollections) cil managed
  {
    // Code size       44 (0x2c)
    .maxstack  4
    .locals init (class [NHibernate]NHibernate.ICriteria V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void NHibernate.Linq.Visitors.NHibernateExpressionVisitor::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  dup
    IL_000c:  stloc.0
    IL_000d:  stfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.MemberNameVisitor::currentCriteria
    IL_0012:  ldloc.0
    IL_0013:  stfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.MemberNameVisitor::rootCriteria
    IL_0018:  ldarg.0
    IL_0019:  ldarg.2
    IL_001a:  stfld      bool NHibernate.Linq.Visitors.MemberNameVisitor::createCriteriaForCollections
    IL_001f:  ldarg.0
    IL_0020:  newobj     instance void [mscorlib]System.Text.StringBuilder::.ctor()
    IL_0025:  stfld      class [mscorlib]System.Text.StringBuilder NHibernate.Linq.Visitors.MemberNameVisitor::memberNameBuilder
    IL_002a:  nop
    IL_002b:  ret
  } // end of method MemberNameVisitor::.ctor

  .method private hidebysig instance void 
          ResetMemberName(string name) cil managed
  {
    // Code size       26 (0x1a)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  newobj     instance void [mscorlib]System.Text.StringBuilder::.ctor()
    IL_0007:  stfld      class [mscorlib]System.Text.StringBuilder NHibernate.Linq.Visitors.MemberNameVisitor::memberNameBuilder
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class [mscorlib]System.Text.StringBuilder NHibernate.Linq.Visitors.MemberNameVisitor::memberNameBuilder
    IL_0012:  ldarg.1
    IL_0013:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_0018:  pop
    IL_0019:  ret
  } // end of method MemberNameVisitor::ResetMemberName

  .method private hidebysig instance class [NHibernate]NHibernate.ICriteria 
          EnsureCriteria(string associationPath,
                         string alias) cil managed
  {
    // Code size       48 (0x30)
    .maxstack  4
    .locals init (class [NHibernate]NHibernate.ICriteria V_0,
             class [NHibernate]NHibernate.ICriteria V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.MemberNameVisitor::currentCriteria
    IL_0007:  ldarg.2
    IL_0008:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::GetCriteriaByAlias(string)
    IL_000d:  dup
    IL_000e:  stloc.0
    IL_000f:  ldnull
    IL_0010:  ceq
    IL_0012:  ldc.i4.0
    IL_0013:  ceq
    IL_0015:  stloc.2
    IL_0016:  ldloc.2
    IL_0017:  brtrue.s   IL_002a

    IL_0019:  nop
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.MemberNameVisitor::currentCriteria
    IL_0020:  ldarg.1
    IL_0021:  ldarg.2
    IL_0022:  ldc.i4.1
    IL_0023:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::CreateCriteria(string,
                                                                                                                          string,
                                                                                                                          valuetype [NHibernate]NHibernate.SqlCommand.JoinType)
    IL_0028:  stloc.0
    IL_0029:  nop
    IL_002a:  ldloc.0
    IL_002b:  stloc.1
    IL_002c:  br.s       IL_002e

    IL_002e:  ldloc.1
    IL_002f:  ret
  } // end of method MemberNameVisitor::EnsureCriteria

  .method private hidebysig instance bool 
          IsRootEntity(class NHibernate.Linq.Expressions.EntityExpression expr) cil managed
  {
    // Code size       58 (0x3a)
    .maxstack  2
    .locals init (class NHibernate.Linq.Expressions.NHibernateExpression V_0,
             bool V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Expressions.EntityExpression::get_Expression()
    IL_0007:  isinst     NHibernate.Linq.Expressions.NHibernateExpression
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  ldnull
    IL_000f:  ceq
    IL_0011:  stloc.2
    IL_0012:  ldloc.2
    IL_0013:  brtrue.s   IL_0019

    IL_0015:  ldc.i4.0
    IL_0016:  stloc.1
    IL_0017:  br.s       IL_0038

    IL_0019:  ldarg.1
    IL_001a:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.MemberNameVisitor::rootCriteria
    IL_0025:  call       class [mscorlib]System.Type NHibernate.Linq.Util.CriteriaUtil::GetRootType(class [NHibernate]NHibernate.ICriteria)
    IL_002a:  ceq
    IL_002c:  stloc.2
    IL_002d:  ldloc.2
    IL_002e:  brtrue.s   IL_0034

    IL_0030:  ldc.i4.0
    IL_0031:  stloc.1
    IL_0032:  br.s       IL_0038

    IL_0034:  ldc.i4.1
    IL_0035:  stloc.1
    IL_0036:  br.s       IL_0038

    IL_0038:  ldloc.1
    IL_0039:  ret
  } // end of method MemberNameVisitor::IsRootEntity

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitEntity(class NHibernate.Linq.Expressions.EntityExpression expr) cil managed
  {
    // Code size       144 (0x90)
    .maxstack  4
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.NHibernateExpressionVisitor::VisitEntity(class NHibernate.Linq.Expressions.EntityExpression)
    IL_0008:  castclass  NHibernate.Linq.Expressions.EntityExpression
    IL_000d:  starg.s    expr
    IL_000f:  ldarg.0
    IL_0010:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.MemberNameVisitor::currentCriteria
    IL_0015:  ldarg.1
    IL_0016:  callvirt   instance string NHibernate.Linq.Expressions.EntityExpression::get_Alias()
    IL_001b:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::GetCriteriaByAlias(string)
    IL_0020:  brtrue.s   IL_002b

    IL_0022:  ldarg.0
    IL_0023:  ldarg.1
    IL_0024:  call       instance bool NHibernate.Linq.Visitors.MemberNameVisitor::IsRootEntity(class NHibernate.Linq.Expressions.EntityExpression)
    IL_0029:  br.s       IL_002c

    IL_002b:  ldc.i4.0
    IL_002c:  stloc.1
    IL_002d:  ldloc.1
    IL_002e:  brtrue.s   IL_0070

    IL_0030:  nop
    IL_0031:  ldarg.1
    IL_0032:  callvirt   instance string NHibernate.Linq.Expressions.EntityExpression::get_AssociationPath()
    IL_0037:  call       bool [mscorlib]System.String::IsNullOrEmpty(string)
    IL_003c:  stloc.1
    IL_003d:  ldloc.1
    IL_003e:  brtrue.s   IL_0058

    IL_0040:  ldarg.0
    IL_0041:  ldarg.0
    IL_0042:  ldarg.1
    IL_0043:  callvirt   instance string NHibernate.Linq.Expressions.EntityExpression::get_AssociationPath()
    IL_0048:  ldarg.1
    IL_0049:  callvirt   instance string NHibernate.Linq.Expressions.EntityExpression::get_Alias()
    IL_004e:  call       instance class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.MemberNameVisitor::EnsureCriteria(string,
                                                                                                                                    string)
    IL_0053:  stfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.MemberNameVisitor::currentCriteria
    IL_0058:  ldarg.0
    IL_0059:  ldarg.1
    IL_005a:  callvirt   instance string NHibernate.Linq.Expressions.EntityExpression::get_Alias()
    IL_005f:  ldstr      "."
    IL_0064:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0069:  call       instance void NHibernate.Linq.Visitors.MemberNameVisitor::ResetMemberName(string)
    IL_006e:  nop
    IL_006f:  nop
    IL_0070:  ldarg.0
    IL_0071:  ldarg.1
    IL_0072:  callvirt   instance string NHibernate.Linq.Expressions.EntityExpression::get_AssociationPath()
    IL_0077:  stfld      string NHibernate.Linq.Visitors.MemberNameVisitor::currentAssociationPath
    IL_007c:  ldarg.0
    IL_007d:  ldarg.1
    IL_007e:  stfld      class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.MemberNameVisitor::currentExpression
    IL_0083:  ldarg.0
    IL_0084:  ldc.i4.1
    IL_0085:  stfld      bool NHibernate.Linq.Visitors.MemberNameVisitor::isQueringEntity
    IL_008a:  ldarg.1
    IL_008b:  stloc.0
    IL_008c:  br.s       IL_008e

    IL_008e:  ldloc.0
    IL_008f:  ret
  } // end of method MemberNameVisitor::VisitEntity

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitPropertyAccess(class NHibernate.Linq.Expressions.PropertyAccessExpression expr) cil managed
  {
    // Code size       63 (0x3f)
    .maxstack  3
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.NHibernateExpressionVisitor::VisitPropertyAccess(class NHibernate.Linq.Expressions.PropertyAccessExpression)
    IL_0008:  castclass  NHibernate.Linq.Expressions.PropertyAccessExpression
    IL_000d:  starg.s    expr
    IL_000f:  ldarg.0
    IL_0010:  ldfld      class [mscorlib]System.Text.StringBuilder NHibernate.Linq.Visitors.MemberNameVisitor::memberNameBuilder
    IL_0015:  ldarg.1
    IL_0016:  callvirt   instance string NHibernate.Linq.Expressions.PropertyAccessExpression::get_Name()
    IL_001b:  ldstr      "."
    IL_0020:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0025:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_002a:  pop
    IL_002b:  ldarg.0
    IL_002c:  ldarg.1
    IL_002d:  stfld      class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.MemberNameVisitor::currentExpression
    IL_0032:  ldarg.0
    IL_0033:  ldc.i4.0
    IL_0034:  stfld      bool NHibernate.Linq.Visitors.MemberNameVisitor::isQueringEntity
    IL_0039:  ldarg.1
    IL_003a:  stloc.0
    IL_003b:  br.s       IL_003d

    IL_003d:  ldloc.0
    IL_003e:  ret
  } // end of method MemberNameVisitor::VisitPropertyAccess

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitCollectionAccess(class NHibernate.Linq.Expressions.CollectionAccessExpression expr) cil managed
  {
    // Code size       117 (0x75)
    .maxstack  4
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.NHibernateExpressionVisitor::VisitCollectionAccess(class NHibernate.Linq.Expressions.CollectionAccessExpression)
    IL_0008:  castclass  NHibernate.Linq.Expressions.CollectionAccessExpression
    IL_000d:  starg.s    expr
    IL_000f:  ldarg.0
    IL_0010:  ldarg.1
    IL_0011:  callvirt   instance string NHibernate.Linq.Expressions.PropertyAccessExpression::get_Name()
    IL_0016:  ldstr      "."
    IL_001b:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0020:  call       instance void NHibernate.Linq.Visitors.MemberNameVisitor::ResetMemberName(string)
    IL_0025:  nop
    IL_0026:  ldarg.0
    IL_0027:  ldarg.1
    IL_0028:  stfld      class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.MemberNameVisitor::currentExpression
    IL_002d:  ldarg.0
    IL_002e:  ldfld      bool NHibernate.Linq.Visitors.MemberNameVisitor::createCriteriaForCollections
    IL_0033:  ldc.i4.0
    IL_0034:  ceq
    IL_0036:  stloc.1
    IL_0037:  ldloc.1
    IL_0038:  brtrue.s   IL_0068

    IL_003a:  nop
    IL_003b:  ldarg.1
    IL_003c:  callvirt   instance class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Expressions.CollectionAccessExpression::get_ElementExpression()
    IL_0041:  ldnull
    IL_0042:  ceq
    IL_0044:  stloc.1
    IL_0045:  ldloc.1
    IL_0046:  brtrue.s   IL_0067

    IL_0048:  nop
    IL_0049:  ldarg.0
    IL_004a:  ldarg.0
    IL_004b:  ldarg.1
    IL_004c:  callvirt   instance string NHibernate.Linq.Expressions.PropertyAccessExpression::get_Name()
    IL_0051:  ldarg.1
    IL_0052:  callvirt   instance class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Expressions.CollectionAccessExpression::get_ElementExpression()
    IL_0057:  callvirt   instance string NHibernate.Linq.Expressions.EntityExpression::get_Alias()
    IL_005c:  call       instance class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.MemberNameVisitor::EnsureCriteria(string,
                                                                                                                                    string)
    IL_0061:  stfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.MemberNameVisitor::currentCriteria
    IL_0066:  nop
    IL_0067:  nop
    IL_0068:  ldarg.0
    IL_0069:  ldc.i4.0
    IL_006a:  stfld      bool NHibernate.Linq.Visitors.MemberNameVisitor::isQueringEntity
    IL_006f:  ldarg.1
    IL_0070:  stloc.0
    IL_0071:  br.s       IL_0073

    IL_0073:  ldloc.0
    IL_0074:  ret
  } // end of method MemberNameVisitor::VisitCollectionAccess

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitMethodCall(class [System.Core]System.Linq.Expressions.MethodCallExpression expr) cil managed
  {
    // Code size       26 (0x1a)
    .maxstack  3
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0008:  ldc.i4.0
    IL_0009:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_000e:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0013:  pop
    IL_0014:  ldarg.1
    IL_0015:  stloc.0
    IL_0016:  br.s       IL_0018

    IL_0018:  ldloc.0
    IL_0019:  ret
  } // end of method MemberNameVisitor::VisitMethodCall

  .method public hidebysig static string 
          GetMemberName(class [NHibernate]NHibernate.ICriteria rootCriteria,
                        class [System.Core]System.Linq.Expressions.Expression expr) cil managed
  {
    // Code size       27 (0x1b)
    .maxstack  2
    .locals init (class NHibernate.Linq.Visitors.MemberNameVisitor V_0,
             string V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  newobj     instance void NHibernate.Linq.Visitors.MemberNameVisitor::.ctor(class [NHibernate]NHibernate.ICriteria)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldarg.1
    IL_000a:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_000f:  pop
    IL_0010:  ldloc.0
    IL_0011:  callvirt   instance string NHibernate.Linq.Visitors.MemberNameVisitor::get_MemberName()
    IL_0016:  stloc.1
    IL_0017:  br.s       IL_0019

    IL_0019:  ldloc.1
    IL_001a:  ret
  } // end of method MemberNameVisitor::GetMemberName

  .method public hidebysig static string 
          GetLastMemberName(class [NHibernate]NHibernate.ICriteria rootCriteria,
                            class [System.Core]System.Linq.Expressions.Expression expr) cil managed
  {
    // Code size       36 (0x24)
    .maxstack  4
    .locals init (string V_0,
             char[] V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  call       string NHibernate.Linq.Visitors.MemberNameVisitor::GetMemberName(class [NHibernate]NHibernate.ICriteria,
                                                                                          class [System.Core]System.Linq.Expressions.Expression)
    IL_0008:  ldc.i4.1
    IL_0009:  newarr     [mscorlib]System.Char
    IL_000e:  stloc.1
    IL_000f:  ldloc.1
    IL_0010:  ldc.i4.0
    IL_0011:  ldc.i4.s   46
    IL_0013:  stelem.i2
    IL_0014:  ldloc.1
    IL_0015:  callvirt   instance string[] [mscorlib]System.String::Split(char[])
    IL_001a:  call       !!0 [System.Core]System.Linq.Enumerable::Last<string>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_001f:  stloc.0
    IL_0020:  br.s       IL_0022

    IL_0022:  ldloc.0
    IL_0023:  ret
  } // end of method MemberNameVisitor::GetLastMemberName

  .property instance string MemberName()
  {
    .get instance string NHibernate.Linq.Visitors.MemberNameVisitor::get_MemberName()
  } // end of property MemberNameVisitor::MemberName
  .property instance class [NHibernate]NHibernate.ICriteria
          CurrentCriteria()
  {
    .get instance class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.MemberNameVisitor::get_CurrentCriteria()
  } // end of property MemberNameVisitor::CurrentCriteria
  .property instance class [System.Core]System.Linq.Expressions.Expression
          CurrentExpression()
  {
    .get instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.MemberNameVisitor::get_CurrentExpression()
  } // end of property MemberNameVisitor::CurrentExpression
} // end of class NHibernate.Linq.Visitors.MemberNameVisitor

.class public auto ansi beforefieldinit NHibernate.Linq.Visitors.NHibernateQueryTranslator
       extends NHibernate.Linq.Visitors.NHibernateExpressionVisitor
{
  .field private initonly class [NHibernate]NHibernate.ISession session
  .field private initonly string entityName
  .field private class [NHibernate]NHibernate.ICriteria rootCriteria
  .field private class NHibernate.Linq.QueryOptions options
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [NHibernate]NHibernate.ISession session) cil managed
  {
    // Code size       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void NHibernate.Linq.Visitors.NHibernateExpressionVisitor::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.NHibernateQueryTranslator::session
    IL_000f:  nop
    IL_0010:  ret
  } // end of method NHibernateQueryTranslator::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [NHibernate]NHibernate.ISession session,
                               string entityName) cil managed
  {
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void NHibernate.Linq.Visitors.NHibernateExpressionVisitor::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.NHibernateQueryTranslator::session
    IL_000f:  ldarg.0
    IL_0010:  ldarg.2
    IL_0011:  stfld      string NHibernate.Linq.Visitors.NHibernateQueryTranslator::entityName
    IL_0016:  nop
    IL_0017:  ret
  } // end of method NHibernateQueryTranslator::.ctor

  .method public hidebysig newslot virtual 
          instance object  Translate(class [System.Core]System.Linq.Expressions.Expression expression,
                                     class NHibernate.Linq.QueryOptions queryOptions) cil managed
  {
    // Code size       27 (0x1b)
    .maxstack  2
    .locals init (object V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldnull
    IL_0003:  stfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.NHibernateQueryTranslator::rootCriteria
    IL_0008:  ldarg.0
    IL_0009:  ldarg.2
    IL_000a:  stfld      class NHibernate.Linq.QueryOptions NHibernate.Linq.Visitors.NHibernateQueryTranslator::options
    IL_000f:  ldarg.0
    IL_0010:  ldarg.1
    IL_0011:  call       instance object NHibernate.Linq.Visitors.NHibernateQueryTranslator::TranslateInternal(class [System.Core]System.Linq.Expressions.Expression)
    IL_0016:  stloc.0
    IL_0017:  br.s       IL_0019

    IL_0019:  ldloc.0
    IL_001a:  ret
  } // end of method NHibernateQueryTranslator::Translate

  .method public hidebysig newslot virtual 
          instance object  Translate(class [System.Core]System.Linq.Expressions.Expression expression,
                                     class [NHibernate]NHibernate.ICriteria rootCriteria) cil managed
  {
    // Code size       27 (0x1b)
    .maxstack  2
    .locals init (object V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.2
    IL_0003:  stfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.NHibernateQueryTranslator::rootCriteria
    IL_0008:  ldarg.0
    IL_0009:  ldnull
    IL_000a:  stfld      class NHibernate.Linq.QueryOptions NHibernate.Linq.Visitors.NHibernateQueryTranslator::options
    IL_000f:  ldarg.0
    IL_0010:  ldarg.1
    IL_0011:  call       instance object NHibernate.Linq.Visitors.NHibernateQueryTranslator::TranslateInternal(class [System.Core]System.Linq.Expressions.Expression)
    IL_0016:  stloc.0
    IL_0017:  br.s       IL_0019

    IL_0019:  ldloc.0
    IL_001a:  ret
  } // end of method NHibernateQueryTranslator::Translate

  .method private hidebysig instance object 
          TranslateInternal(class [System.Core]System.Linq.Expressions.Expression expression) cil managed
  {
    // Code size       47 (0x2f)
    .maxstack  4
    .locals init (class NHibernate.Linq.Visitors.RootVisitor V_0,
             object V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0008:  pop
    IL_0009:  ldarg.0
    IL_000a:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.NHibernateQueryTranslator::rootCriteria
    IL_000f:  ldarg.0
    IL_0010:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.NHibernateQueryTranslator::session
    IL_0015:  ldc.i4.1
    IL_0016:  newobj     instance void NHibernate.Linq.Visitors.RootVisitor::.ctor(class [NHibernate]NHibernate.ICriteria,
                                                                                   class [NHibernate]NHibernate.ISession,
                                                                                   bool)
    IL_001b:  stloc.0
    IL_001c:  ldloc.0
    IL_001d:  ldarg.1
    IL_001e:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0023:  pop
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance object NHibernate.Linq.Visitors.RootVisitor::get_Results()
    IL_002a:  stloc.1
    IL_002b:  br.s       IL_002d

    IL_002d:  ldloc.1
    IL_002e:  ret
  } // end of method NHibernateQueryTranslator::TranslateInternal

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitQuerySource(class NHibernate.Linq.Expressions.QuerySourceExpression expr) cil managed
  {
    // Code size       118 (0x76)
    .maxstack  4
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.NHibernateQueryTranslator::rootCriteria
    IL_0007:  ldnull
    IL_0008:  ceq
    IL_000a:  ldc.i4.0
    IL_000b:  ceq
    IL_000d:  stloc.1
    IL_000e:  ldloc.1
    IL_000f:  brtrue.s   IL_0070

    IL_0011:  nop
    IL_0012:  ldarg.0
    IL_0013:  ldfld      string NHibernate.Linq.Visitors.NHibernateQueryTranslator::entityName
    IL_0018:  call       bool [mscorlib]System.String::IsNullOrEmpty(string)
    IL_001d:  stloc.1
    IL_001e:  ldloc.1
    IL_001f:  brtrue.s   IL_0040

    IL_0021:  ldarg.0
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.NHibernateQueryTranslator::session
    IL_0028:  ldarg.0
    IL_0029:  ldfld      string NHibernate.Linq.Visitors.NHibernateQueryTranslator::entityName
    IL_002e:  ldarg.1
    IL_002f:  callvirt   instance string NHibernate.Linq.Expressions.QuerySourceExpression::get_Alias()
    IL_0034:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ISession::CreateCriteria(string,
                                                                                                                         string)
    IL_0039:  stfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.NHibernateQueryTranslator::rootCriteria
    IL_003e:  br.s       IL_005d

    IL_0040:  ldarg.0
    IL_0041:  ldarg.0
    IL_0042:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.NHibernateQueryTranslator::session
    IL_0047:  ldarg.1
    IL_0048:  callvirt   instance class [mscorlib]System.Type NHibernate.Linq.Expressions.QuerySourceExpression::get_ElementType()
    IL_004d:  ldarg.1
    IL_004e:  callvirt   instance string NHibernate.Linq.Expressions.QuerySourceExpression::get_Alias()
    IL_0053:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ISession::CreateCriteria(class [mscorlib]System.Type,
                                                                                                                         string)
    IL_0058:  stfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.NHibernateQueryTranslator::rootCriteria
    IL_005d:  ldarg.0
    IL_005e:  ldfld      class NHibernate.Linq.QueryOptions NHibernate.Linq.Visitors.NHibernateQueryTranslator::options
    IL_0063:  ldarg.0
    IL_0064:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.NHibernateQueryTranslator::rootCriteria
    IL_0069:  callvirt   instance void NHibernate.Linq.QueryOptions::Execute(class [NHibernate]NHibernate.ICriteria)
    IL_006e:  nop
    IL_006f:  nop
    IL_0070:  ldarg.1
    IL_0071:  stloc.0
    IL_0072:  br.s       IL_0074

    IL_0074:  ldloc.0
    IL_0075:  ret
  } // end of method NHibernateQueryTranslator::VisitQuerySource

} // end of class NHibernate.Linq.Visitors.NHibernateQueryTranslator

.class public auto ansi beforefieldinit NHibernate.Linq.Visitors.PropertyToMethodVisitor
       extends NHibernate.Linq.Visitors.NHibernateExpressionVisitor
{
  .field private static class [System.Core]System.Func`2<class [mscorlib]System.Reflection.MethodInfo,bool> 'CS$<>9__CachedAnonymousMethodDelegate1'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method private hidebysig instance class [mscorlib]System.Reflection.MethodInfo 
          GetCountMethod(class [mscorlib]System.Type elementType) cil managed
  {
    // Code size       81 (0x51)
    .maxstack  4
    .locals init (class [mscorlib]System.Reflection.MethodInfo V_0,
             class [mscorlib]System.Reflection.MethodInfo V_1,
             class [mscorlib]System.Type[] V_2)
    IL_0000:  nop
    IL_0001:  ldtoken    [System.Core]System.Linq.Enumerable
    IL_0006:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_000b:  call       instance class [mscorlib]System.Reflection.MethodInfo[] [mscorlib]System.Type::GetMethods()
    IL_0010:  ldsfld     class [System.Core]System.Func`2<class [mscorlib]System.Reflection.MethodInfo,bool> NHibernate.Linq.Visitors.PropertyToMethodVisitor::'CS$<>9__CachedAnonymousMethodDelegate1'
    IL_0015:  brtrue.s   IL_002a

    IL_0017:  ldnull
    IL_0018:  ldftn      bool NHibernate.Linq.Visitors.PropertyToMethodVisitor::'<GetCountMethod>b__0'(class [mscorlib]System.Reflection.MethodInfo)
    IL_001e:  newobj     instance void class [System.Core]System.Func`2<class [mscorlib]System.Reflection.MethodInfo,bool>::.ctor(object,
                                                                                                                                  native int)
    IL_0023:  stsfld     class [System.Core]System.Func`2<class [mscorlib]System.Reflection.MethodInfo,bool> NHibernate.Linq.Visitors.PropertyToMethodVisitor::'CS$<>9__CachedAnonymousMethodDelegate1'
    IL_0028:  br.s       IL_002a

    IL_002a:  ldsfld     class [System.Core]System.Func`2<class [mscorlib]System.Reflection.MethodInfo,bool> NHibernate.Linq.Visitors.PropertyToMethodVisitor::'CS$<>9__CachedAnonymousMethodDelegate1'
    IL_002f:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> [System.Core]System.Linq.Enumerable::Where<class [mscorlib]System.Reflection.MethodInfo>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                class [System.Core]System.Func`2<!!0,bool>)
    IL_0034:  call       !!0 [System.Core]System.Linq.Enumerable::First<class [mscorlib]System.Reflection.MethodInfo>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0039:  stloc.0
    IL_003a:  ldloc.0
    IL_003b:  ldc.i4.1
    IL_003c:  newarr     [mscorlib]System.Type
    IL_0041:  stloc.2
    IL_0042:  ldloc.2
    IL_0043:  ldc.i4.0
    IL_0044:  ldarg.1
    IL_0045:  stelem.ref
    IL_0046:  ldloc.2
    IL_0047:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [mscorlib]System.Reflection.MethodInfo::MakeGenericMethod(class [mscorlib]System.Type[])
    IL_004c:  stloc.1
    IL_004d:  br.s       IL_004f

    IL_004f:  ldloc.1
    IL_0050:  ret
  } // end of method PropertyToMethodVisitor::GetCountMethod

  .method private hidebysig instance class [System.Core]System.Linq.Expressions.Expression 
          CastIfNecessary(class NHibernate.Linq.Expressions.CollectionAccessExpression expr) cil managed
  {
    // Code size       97 (0x61)
    .maxstack  4
    .locals init (class [mscorlib]System.Reflection.MethodInfo V_0,
             class [System.Core]System.Linq.Expressions.Expression V_1,
             bool V_2,
             class [mscorlib]System.Type[] V_3,
             class [System.Core]System.Linq.Expressions.Expression[] V_4)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_0007:  callvirt   instance bool [mscorlib]System.Type::get_IsGenericType()
    IL_000c:  ldc.i4.0
    IL_000d:  ceq
    IL_000f:  stloc.2
    IL_0010:  ldloc.2
    IL_0011:  brtrue.s   IL_0017

    IL_0013:  ldarg.1
    IL_0014:  stloc.1
    IL_0015:  br.s       IL_005f

    IL_0017:  ldtoken    [System.Core]System.Linq.Enumerable
    IL_001c:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0021:  ldstr      "Cast"
    IL_0026:  call       instance class [mscorlib]System.Reflection.MethodInfo [mscorlib]System.Type::GetMethod(string)
    IL_002b:  ldc.i4.1
    IL_002c:  newarr     [mscorlib]System.Type
    IL_0031:  stloc.3
    IL_0032:  ldloc.3
    IL_0033:  ldc.i4.0
    IL_0034:  ldarg.1
    IL_0035:  callvirt   instance class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Expressions.CollectionAccessExpression::get_ElementExpression()
    IL_003a:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_003f:  stelem.ref
    IL_0040:  ldloc.3
    IL_0041:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [mscorlib]System.Reflection.MethodInfo::MakeGenericMethod(class [mscorlib]System.Type[])
    IL_0046:  stloc.0
    IL_0047:  ldloc.0
    IL_0048:  ldc.i4.1
    IL_0049:  newarr     [System.Core]System.Linq.Expressions.Expression
    IL_004e:  stloc.s    V_4
    IL_0050:  ldloc.s    V_4
    IL_0052:  ldc.i4.0
    IL_0053:  ldarg.1
    IL_0054:  stelem.ref
    IL_0055:  ldloc.s    V_4
    IL_0057:  call       class [System.Core]System.Linq.Expressions.MethodCallExpression [System.Core]System.Linq.Expressions.Expression::Call(class [mscorlib]System.Reflection.MethodInfo,
                                                                                                                                               class [System.Core]System.Linq.Expressions.Expression[])
    IL_005c:  stloc.1
    IL_005d:  br.s       IL_005f

    IL_005f:  ldloc.1
    IL_0060:  ret
  } // end of method PropertyToMethodVisitor::CastIfNecessary

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitMemberAccess(class [System.Core]System.Linq.Expressions.MemberExpression m) cil managed
  {
    // Code size       108 (0x6c)
    .maxstack  5
    .locals init (class NHibernate.Linq.Expressions.CollectionAccessExpression V_0,
             class [mscorlib]System.Reflection.MethodInfo V_1,
             class [System.Core]System.Linq.Expressions.Expression V_2,
             bool V_3,
             class [System.Core]System.Linq.Expressions.Expression[] V_4)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.MemberExpression::get_Expression()
    IL_0007:  isinst     NHibernate.Linq.Expressions.CollectionAccessExpression
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  brfalse.s  IL_002a

    IL_0010:  ldarg.1
    IL_0011:  callvirt   instance class [mscorlib]System.Reflection.MemberInfo [System.Core]System.Linq.Expressions.MemberExpression::get_Member()
    IL_0016:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_001b:  ldstr      "Count"
    IL_0020:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_0025:  ldc.i4.0
    IL_0026:  ceq
    IL_0028:  br.s       IL_002b

    IL_002a:  ldc.i4.1
    IL_002b:  stloc.3
    IL_002c:  ldloc.3
    IL_002d:  brtrue.s   IL_0060

    IL_002f:  nop
    IL_0030:  ldarg.0
    IL_0031:  ldloc.0
    IL_0032:  callvirt   instance class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Expressions.CollectionAccessExpression::get_ElementExpression()
    IL_0037:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_003c:  call       instance class [mscorlib]System.Reflection.MethodInfo NHibernate.Linq.Visitors.PropertyToMethodVisitor::GetCountMethod(class [mscorlib]System.Type)
    IL_0041:  stloc.1
    IL_0042:  ldloc.1
    IL_0043:  ldc.i4.1
    IL_0044:  newarr     [System.Core]System.Linq.Expressions.Expression
    IL_0049:  stloc.s    V_4
    IL_004b:  ldloc.s    V_4
    IL_004d:  ldc.i4.0
    IL_004e:  ldarg.0
    IL_004f:  ldloc.0
    IL_0050:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.PropertyToMethodVisitor::CastIfNecessary(class NHibernate.Linq.Expressions.CollectionAccessExpression)
    IL_0055:  stelem.ref
    IL_0056:  ldloc.s    V_4
    IL_0058:  call       class [System.Core]System.Linq.Expressions.MethodCallExpression [System.Core]System.Linq.Expressions.Expression::Call(class [mscorlib]System.Reflection.MethodInfo,
                                                                                                                                               class [System.Core]System.Linq.Expressions.Expression[])
    IL_005d:  stloc.2
    IL_005e:  br.s       IL_006a

    IL_0060:  ldarg.0
    IL_0061:  ldarg.1
    IL_0062:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::VisitMemberAccess(class [System.Core]System.Linq.Expressions.MemberExpression)
    IL_0067:  stloc.2
    IL_0068:  br.s       IL_006a

    IL_006a:  ldloc.2
    IL_006b:  ret
  } // end of method PropertyToMethodVisitor::VisitMemberAccess

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void NHibernate.Linq.Visitors.NHibernateExpressionVisitor::.ctor()
    IL_0006:  ret
  } // end of method PropertyToMethodVisitor::.ctor

  .method private hidebysig static bool  '<GetCountMethod>b__0'(class [mscorlib]System.Reflection.MethodInfo m) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       40 (0x28)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_0006:  ldstr      "Count"
    IL_000b:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_0010:  brfalse.s  IL_0022

    IL_0012:  ldarg.0
    IL_0013:  callvirt   instance class [mscorlib]System.Reflection.ParameterInfo[] [mscorlib]System.Reflection.MethodBase::GetParameters()
    IL_0018:  call       int32 [System.Core]System.Linq.Enumerable::Count<class [mscorlib]System.Reflection.ParameterInfo>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_001d:  ldc.i4.1
    IL_001e:  ceq
    IL_0020:  br.s       IL_0023

    IL_0022:  ldc.i4.0
    IL_0023:  stloc.0
    IL_0024:  br.s       IL_0026

    IL_0026:  ldloc.0
    IL_0027:  ret
  } // end of method PropertyToMethodVisitor::'<GetCountMethod>b__0'

} // end of class NHibernate.Linq.Visitors.PropertyToMethodVisitor

.class public auto ansi beforefieldinit NHibernate.Linq.Visitors.RootVisitor
       extends NHibernate.Linq.Visitors.NHibernateExpressionVisitor
{
  .field private initonly class [NHibernate]NHibernate.ICriteria rootCriteria
  .field private initonly class [NHibernate]NHibernate.ISession session
  .field private initonly bool isAtRoot
  .field private object results
  .field private bool hasResults
  .method public hidebysig specialname instance object 
          get_Results() cil managed
  {
    // Code size       34 (0x22)
    .maxstack  2
    .locals init (object V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      bool NHibernate.Linq.Visitors.RootVisitor::hasResults
    IL_0007:  ldc.i4.0
    IL_0008:  ceq
    IL_000a:  stloc.1
    IL_000b:  ldloc.1
    IL_000c:  brtrue.s   IL_0017

    IL_000e:  ldarg.0
    IL_000f:  ldfld      object NHibernate.Linq.Visitors.RootVisitor::results
    IL_0014:  stloc.0
    IL_0015:  br.s       IL_0020

    IL_0017:  ldarg.0
    IL_0018:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.RootVisitor::rootCriteria
    IL_001d:  stloc.0
    IL_001e:  br.s       IL_0020

    IL_0020:  ldloc.0
    IL_0021:  ret
  } // end of method RootVisitor::get_Results

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [NHibernate]NHibernate.ICriteria rootCriteria,
                               class [NHibernate]NHibernate.ISession session,
                               bool isAtRoot) cil managed
  {
    // Code size       31 (0x1f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void NHibernate.Linq.Visitors.NHibernateExpressionVisitor::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.RootVisitor::rootCriteria
    IL_000f:  ldarg.0
    IL_0010:  ldarg.2
    IL_0011:  stfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.RootVisitor::session
    IL_0016:  ldarg.0
    IL_0017:  ldarg.3
    IL_0018:  stfld      bool NHibernate.Linq.Visitors.RootVisitor::isAtRoot
    IL_001d:  nop
    IL_001e:  ret
  } // end of method RootVisitor::.ctor

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitMethodCall(class [System.Core]System.Linq.Expressions.MethodCallExpression expr) cil managed
  {
    // Code size       680 (0x2a8)
    .maxstack  4
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             string V_1,
             int32 V_2,
             bool V_3)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0008:  ldc.i4.0
    IL_0009:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_000e:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0013:  pop
    IL_0014:  ldarg.1
    IL_0015:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [System.Core]System.Linq.Expressions.MethodCallExpression::get_Method()
    IL_001a:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_001f:  stloc.1
    IL_0020:  ldloc.1
    IL_0021:  brfalse    IL_0282

    IL_0026:  volatile.
    IL_0028:  ldsfld     class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32> '<PrivateImplementationDetails>{F233971D-B03F-42A4-937F-644633406AC4}'::'$$method0x6000159-1'
    IL_002d:  brtrue     IL_017c

    IL_0032:  ldc.i4.s   25
    IL_0034:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::.ctor(int32)
    IL_0039:  dup
    IL_003a:  ldstr      "Where"
    IL_003f:  ldc.i4.0
    IL_0040:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_0045:  dup
    IL_0046:  ldstr      "Select"
    IL_004b:  ldc.i4.1
    IL_004c:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_0051:  dup
    IL_0052:  ldstr      "OrderBy"
    IL_0057:  ldc.i4.2
    IL_0058:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_005d:  dup
    IL_005e:  ldstr      "ThenBy"
    IL_0063:  ldc.i4.3
    IL_0064:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_0069:  dup
    IL_006a:  ldstr      "OrderByDescending"
    IL_006f:  ldc.i4.4
    IL_0070:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_0075:  dup
    IL_0076:  ldstr      "ThenByDescending"
    IL_007b:  ldc.i4.5
    IL_007c:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_0081:  dup
    IL_0082:  ldstr      "Take"
    IL_0087:  ldc.i4.6
    IL_0088:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_008d:  dup
    IL_008e:  ldstr      "Skip"
    IL_0093:  ldc.i4.7
    IL_0094:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_0099:  dup
    IL_009a:  ldstr      "Distinct"
    IL_009f:  ldc.i4.8
    IL_00a0:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_00a5:  dup
    IL_00a6:  ldstr      "GroupBy"
    IL_00ab:  ldc.i4.s   9
    IL_00ad:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_00b2:  dup
    IL_00b3:  ldstr      "SelectMany"
    IL_00b8:  ldc.i4.s   10
    IL_00ba:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_00bf:  dup
    IL_00c0:  ldstr      "OfType"
    IL_00c5:  ldc.i4.s   11
    IL_00c7:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_00cc:  dup
    IL_00cd:  ldstr      "Cast"
    IL_00d2:  ldc.i4.s   12
    IL_00d4:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_00d9:  dup
    IL_00da:  ldstr      "First"
    IL_00df:  ldc.i4.s   13
    IL_00e1:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_00e6:  dup
    IL_00e7:  ldstr      "FirstOrDefault"
    IL_00ec:  ldc.i4.s   14
    IL_00ee:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_00f3:  dup
    IL_00f4:  ldstr      "Single"
    IL_00f9:  ldc.i4.s   15
    IL_00fb:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_0100:  dup
    IL_0101:  ldstr      "SingleOrDefault"
    IL_0106:  ldc.i4.s   16
    IL_0108:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_010d:  dup
    IL_010e:  ldstr      "Aggregate"
    IL_0113:  ldc.i4.s   17
    IL_0115:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_011a:  dup
    IL_011b:  ldstr      "Average"
    IL_0120:  ldc.i4.s   18
    IL_0122:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_0127:  dup
    IL_0128:  ldstr      "Count"
    IL_012d:  ldc.i4.s   19
    IL_012f:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_0134:  dup
    IL_0135:  ldstr      "LongCount"
    IL_013a:  ldc.i4.s   20
    IL_013c:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_0141:  dup
    IL_0142:  ldstr      "Max"
    IL_0147:  ldc.i4.s   21
    IL_0149:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_014e:  dup
    IL_014f:  ldstr      "Min"
    IL_0154:  ldc.i4.s   22
    IL_0156:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_015b:  dup
    IL_015c:  ldstr      "Sum"
    IL_0161:  ldc.i4.s   23
    IL_0163:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_0168:  dup
    IL_0169:  ldstr      "Any"
    IL_016e:  ldc.i4.s   24
    IL_0170:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_0175:  volatile.
    IL_0177:  stsfld     class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32> '<PrivateImplementationDetails>{F233971D-B03F-42A4-937F-644633406AC4}'::'$$method0x6000159-1'
    IL_017c:  volatile.
    IL_017e:  ldsfld     class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32> '<PrivateImplementationDetails>{F233971D-B03F-42A4-937F-644633406AC4}'::'$$method0x6000159-1'
    IL_0183:  ldloc.1
    IL_0184:  ldloca.s   V_2
    IL_0186:  call       instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::TryGetValue(!0,
                                                                                                                          !1&)
    IL_018b:  brfalse    IL_0282

    IL_0190:  ldloc.2
    IL_0191:  switch     ( 
                          IL_01ff,
                          IL_020c,
                          IL_0219,
                          IL_0219,
                          IL_0223,
                          IL_0223,
                          IL_022d,
                          IL_0237,
                          IL_0241,
                          IL_024b,
                          IL_0255,
                          IL_025f,
                          IL_025f,
                          IL_0261,
                          IL_0261,
                          IL_0261,
                          IL_0261,
                          IL_0261,
                          IL_0261,
                          IL_0261,
                          IL_0261,
                          IL_0261,
                          IL_0261,
                          IL_0261,
                          IL_0261)
    IL_01fa:  br         IL_0282

    IL_01ff:  ldarg.0
    IL_0200:  ldarg.1
    IL_0201:  call       instance void NHibernate.Linq.Visitors.RootVisitor::HandleWhereCall(class [System.Core]System.Linq.Expressions.MethodCallExpression)
    IL_0206:  nop
    IL_0207:  br         IL_02a2

    IL_020c:  ldarg.0
    IL_020d:  ldarg.1
    IL_020e:  call       instance void NHibernate.Linq.Visitors.RootVisitor::HandleSelectCall(class [System.Core]System.Linq.Expressions.MethodCallExpression)
    IL_0213:  nop
    IL_0214:  br         IL_02a2

    IL_0219:  ldarg.0
    IL_021a:  ldarg.1
    IL_021b:  call       instance void NHibernate.Linq.Visitors.RootVisitor::HandleOrderByCall(class [System.Core]System.Linq.Expressions.MethodCallExpression)
    IL_0220:  nop
    IL_0221:  br.s       IL_02a2

    IL_0223:  ldarg.0
    IL_0224:  ldarg.1
    IL_0225:  call       instance void NHibernate.Linq.Visitors.RootVisitor::HandleOrderByDescendingCall(class [System.Core]System.Linq.Expressions.MethodCallExpression)
    IL_022a:  nop
    IL_022b:  br.s       IL_02a2

    IL_022d:  ldarg.0
    IL_022e:  ldarg.1
    IL_022f:  call       instance void NHibernate.Linq.Visitors.RootVisitor::HandleTakeCall(class [System.Core]System.Linq.Expressions.MethodCallExpression)
    IL_0234:  nop
    IL_0235:  br.s       IL_02a2

    IL_0237:  ldarg.0
    IL_0238:  ldarg.1
    IL_0239:  call       instance void NHibernate.Linq.Visitors.RootVisitor::HandleSkipCall(class [System.Core]System.Linq.Expressions.MethodCallExpression)
    IL_023e:  nop
    IL_023f:  br.s       IL_02a2

    IL_0241:  ldarg.0
    IL_0242:  ldarg.1
    IL_0243:  call       instance void NHibernate.Linq.Visitors.RootVisitor::HandleDistinctCall(class [System.Core]System.Linq.Expressions.MethodCallExpression)
    IL_0248:  nop
    IL_0249:  br.s       IL_02a2

    IL_024b:  ldarg.0
    IL_024c:  ldarg.1
    IL_024d:  call       instance void NHibernate.Linq.Visitors.RootVisitor::HandleGroupByCall(class [System.Core]System.Linq.Expressions.MethodCallExpression)
    IL_0252:  nop
    IL_0253:  br.s       IL_02a2

    IL_0255:  ldarg.0
    IL_0256:  ldarg.1
    IL_0257:  call       instance void NHibernate.Linq.Visitors.RootVisitor::HandleSelectManyCall(class [System.Core]System.Linq.Expressions.MethodCallExpression)
    IL_025c:  nop
    IL_025d:  br.s       IL_02a2

    IL_025f:  br.s       IL_02a2

    IL_0261:  ldarg.0
    IL_0262:  ldfld      bool NHibernate.Linq.Visitors.RootVisitor::isAtRoot
    IL_0267:  ldc.i4.0
    IL_0268:  ceq
    IL_026a:  stloc.3
    IL_026b:  ldloc.3
    IL_026c:  brtrue.s   IL_0278

    IL_026e:  ldarg.0
    IL_026f:  ldarg.1
    IL_0270:  call       instance void NHibernate.Linq.Visitors.RootVisitor::HandleImmediateResultsCall(class [System.Core]System.Linq.Expressions.MethodCallExpression)
    IL_0275:  nop
    IL_0276:  br.s       IL_0280

    IL_0278:  ldarg.0
    IL_0279:  ldarg.1
    IL_027a:  call       instance void NHibernate.Linq.Visitors.RootVisitor::HandleSelectMethodCall(class [System.Core]System.Linq.Expressions.MethodCallExpression)
    IL_027f:  nop
    IL_0280:  br.s       IL_02a2

    IL_0282:  ldstr      "The method "
    IL_0287:  ldarg.1
    IL_0288:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [System.Core]System.Linq.Expressions.MethodCallExpression::get_Method()
    IL_028d:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_0292:  ldstr      " is not implemented."
    IL_0297:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_029c:  newobj     instance void [mscorlib]System.NotImplementedException::.ctor(string)
    IL_02a1:  throw

    IL_02a2:  ldarg.1
    IL_02a3:  stloc.0
    IL_02a4:  br.s       IL_02a6

    IL_02a6:  ldloc.0
    IL_02a7:  ret
  } // end of method RootVisitor::VisitMethodCall

  .method private hidebysig instance void 
          HandleWhereCall(class [System.Core]System.Linq.Expressions.MethodCallExpression 'call') cil managed
  {
    // Code size       45 (0x2d)
    .maxstack  4
    .locals init (class [mscorlib]System.Collections.Generic.IEnumerable`1<class [NHibernate]NHibernate.Criterion.ICriterion> V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.RootVisitor::rootCriteria
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.RootVisitor::session
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0013:  ldc.i4.1
    IL_0014:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_0019:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::GetCriterion(class [NHibernate]NHibernate.ICriteria,
                                                                                                                                                                                                  class [NHibernate]NHibernate.ISession,
                                                                                                                                                                                                  class [System.Core]System.Linq.Expressions.Expression)
    IL_001e:  stloc.0
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.RootVisitor::rootCriteria
    IL_0025:  ldloc.0
    IL_0026:  call       void NHibernate.Linq.Util.CriteriaUtil::Add(class [NHibernate]NHibernate.ICriteria,
                                                                     class [mscorlib]System.Collections.Generic.IEnumerable`1<class [NHibernate]NHibernate.Criterion.ICriterion>)
    IL_002b:  nop
    IL_002c:  ret
  } // end of method RootVisitor::HandleWhereCall

  .method private hidebysig instance void 
          HandleSelectCall(class [System.Core]System.Linq.Expressions.MethodCallExpression 'call') cil managed
  {
    // Code size       92 (0x5c)
    .maxstack  3
    .locals init (class [System.Core]System.Linq.Expressions.LambdaExpression V_0,
             class NHibernate.Linq.Visitors.SelectArgumentsVisitor V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_000d:  call       class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Util.LinqUtil::StripQuotes(class [System.Core]System.Linq.Expressions.Expression)
    IL_0012:  castclass  [System.Core]System.Linq.Expressions.LambdaExpression
    IL_0017:  stloc.0
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.RootVisitor::rootCriteria
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.RootVisitor::session
    IL_0024:  newobj     instance void NHibernate.Linq.Visitors.SelectArgumentsVisitor::.ctor(class [NHibernate]NHibernate.ICriteria,
                                                                                              class [NHibernate]NHibernate.ISession)
    IL_0029:  stloc.1
    IL_002a:  ldloc.1
    IL_002b:  ldloc.0
    IL_002c:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.LambdaExpression::get_Body()
    IL_0031:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0036:  pop
    IL_0037:  ldarg.0
    IL_0038:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.RootVisitor::rootCriteria
    IL_003d:  ldloc.1
    IL_003e:  callvirt   instance class [NHibernate]NHibernate.Criterion.IProjection NHibernate.Linq.Visitors.SelectArgumentsVisitor::get_Projection()
    IL_0043:  call       void NHibernate.Linq.Util.CriteriaUtil::SetProjectionIfNotNull(class [NHibernate]NHibernate.ICriteria,
                                                                                        class [NHibernate]NHibernate.Criterion.IProjection)
    IL_0048:  nop
    IL_0049:  ldarg.0
    IL_004a:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.RootVisitor::rootCriteria
    IL_004f:  ldloc.1
    IL_0050:  callvirt   instance class [NHibernate]NHibernate.Transform.IResultTransformer NHibernate.Linq.Visitors.SelectArgumentsVisitor::get_Transformer()
    IL_0055:  call       void NHibernate.Linq.Util.CriteriaUtil::SetResultTransformerIfNotNull(class [NHibernate]NHibernate.ICriteria,
                                                                                               class [NHibernate]NHibernate.Transform.IResultTransformer)
    IL_005a:  nop
    IL_005b:  ret
  } // end of method RootVisitor::HandleSelectCall

  .method private hidebysig instance void 
          HandleOrderByCall(class [System.Core]System.Linq.Expressions.MethodCallExpression 'call') cil managed
  {
    // Code size       56 (0x38)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             string V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_000d:  castclass  [System.Core]System.Linq.Expressions.UnaryExpression
    IL_0012:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.UnaryExpression::get_Operand()
    IL_0017:  stloc.0
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.RootVisitor::rootCriteria
    IL_001e:  ldloc.0
    IL_001f:  call       string NHibernate.Linq.Visitors.MemberNameVisitor::GetMemberName(class [NHibernate]NHibernate.ICriteria,
                                                                                          class [System.Core]System.Linq.Expressions.Expression)
    IL_0024:  stloc.1
    IL_0025:  ldarg.0
    IL_0026:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.RootVisitor::rootCriteria
    IL_002b:  ldloc.1
    IL_002c:  call       class [NHibernate]NHibernate.Criterion.Order [NHibernate]NHibernate.Criterion.Order::Asc(string)
    IL_0031:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::AddOrder(class [NHibernate]NHibernate.Criterion.Order)
    IL_0036:  pop
    IL_0037:  ret
  } // end of method RootVisitor::HandleOrderByCall

  .method private hidebysig instance void 
          HandleOrderByDescendingCall(class [System.Core]System.Linq.Expressions.MethodCallExpression 'call') cil managed
  {
    // Code size       56 (0x38)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             string V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_000d:  castclass  [System.Core]System.Linq.Expressions.UnaryExpression
    IL_0012:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.UnaryExpression::get_Operand()
    IL_0017:  stloc.0
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.RootVisitor::rootCriteria
    IL_001e:  ldloc.0
    IL_001f:  call       string NHibernate.Linq.Visitors.MemberNameVisitor::GetMemberName(class [NHibernate]NHibernate.ICriteria,
                                                                                          class [System.Core]System.Linq.Expressions.Expression)
    IL_0024:  stloc.1
    IL_0025:  ldarg.0
    IL_0026:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.RootVisitor::rootCriteria
    IL_002b:  ldloc.1
    IL_002c:  call       class [NHibernate]NHibernate.Criterion.Order [NHibernate]NHibernate.Criterion.Order::Desc(string)
    IL_0031:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::AddOrder(class [NHibernate]NHibernate.Criterion.Order)
    IL_0036:  pop
    IL_0037:  ret
  } // end of method RootVisitor::HandleOrderByDescendingCall

  .method private hidebysig instance void 
          HandleTakeCall(class [System.Core]System.Linq.Expressions.MethodCallExpression 'call') cil managed
  {
    // Code size       43 (0x2b)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_000d:  castclass  [System.Core]System.Linq.Expressions.ConstantExpression
    IL_0012:  callvirt   instance object [System.Core]System.Linq.Expressions.ConstantExpression::get_Value()
    IL_0017:  unbox.any  [mscorlib]System.Int32
    IL_001c:  stloc.0
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.RootVisitor::rootCriteria
    IL_0023:  ldloc.0
    IL_0024:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::SetMaxResults(int32)
    IL_0029:  pop
    IL_002a:  ret
  } // end of method RootVisitor::HandleTakeCall

  .method private hidebysig instance void 
          HandleSkipCall(class [System.Core]System.Linq.Expressions.MethodCallExpression 'call') cil managed
  {
    // Code size       43 (0x2b)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_000d:  castclass  [System.Core]System.Linq.Expressions.ConstantExpression
    IL_0012:  callvirt   instance object [System.Core]System.Linq.Expressions.ConstantExpression::get_Value()
    IL_0017:  unbox.any  [mscorlib]System.Int32
    IL_001c:  stloc.0
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.RootVisitor::rootCriteria
    IL_0023:  ldloc.0
    IL_0024:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::SetFirstResult(int32)
    IL_0029:  pop
    IL_002a:  ret
  } // end of method RootVisitor::HandleSkipCall

  .method private hidebysig instance void 
          HandleDistinctCall(class [System.Core]System.Linq.Expressions.MethodCallExpression 'call') cil managed
  {
    // Code size       68 (0x44)
    .maxstack  4
    .locals init (class [NHibernate]NHibernate.Criterion.PropertyProjection V_0,
             bool V_1,
             class [NHibernate]NHibernate.Criterion.IProjection[] V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.RootVisitor::rootCriteria
    IL_0007:  call       class [NHibernate]NHibernate.Criterion.IProjection NHibernate.Linq.Util.CriteriaUtil::GetProjection(class [NHibernate]NHibernate.ICriteria)
    IL_000c:  isinst     [NHibernate]NHibernate.Criterion.PropertyProjection
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldnull
    IL_0014:  ceq
    IL_0016:  stloc.1
    IL_0017:  ldloc.1
    IL_0018:  brtrue.s   IL_0043

    IL_001a:  nop
    IL_001b:  ldarg.0
    IL_001c:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.RootVisitor::rootCriteria
    IL_0021:  ldc.i4.1
    IL_0022:  newarr     [NHibernate]NHibernate.Criterion.IProjection
    IL_0027:  stloc.2
    IL_0028:  ldloc.2
    IL_0029:  ldc.i4.0
    IL_002a:  ldloc.0
    IL_002b:  callvirt   instance string [NHibernate]NHibernate.Criterion.PropertyProjection::get_PropertyName()
    IL_0030:  call       class [NHibernate]NHibernate.Criterion.PropertyProjection [NHibernate]NHibernate.Criterion.Projections::Property(string)
    IL_0035:  call       class [NHibernate]NHibernate.Criterion.IProjection [NHibernate]NHibernate.Criterion.Projections::Distinct(class [NHibernate]NHibernate.Criterion.IProjection)
    IL_003a:  stelem.ref
    IL_003b:  ldloc.2
    IL_003c:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::SetProjection(class [NHibernate]NHibernate.Criterion.IProjection[])
    IL_0041:  pop
    IL_0042:  nop
    IL_0043:  ret
  } // end of method RootVisitor::HandleDistinctCall

  .method private hidebysig instance void 
          HandleGroupByCall(class [System.Core]System.Linq.Expressions.MethodCallExpression 'call') cil managed
  {
    // Code size       51 (0x33)
    .maxstack  3
    .locals init (class NHibernate.Linq.Visitors.GroupingArgumentsVisitor V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.RootVisitor::rootCriteria
    IL_0007:  newobj     instance void NHibernate.Linq.Visitors.GroupingArgumentsVisitor::.ctor(class [NHibernate]NHibernate.ICriteria)
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0014:  ldc.i4.1
    IL_0015:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_001a:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_001f:  pop
    IL_0020:  ldarg.0
    IL_0021:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.RootVisitor::rootCriteria
    IL_0026:  ldloc.0
    IL_0027:  callvirt   instance class [NHibernate]NHibernate.Criterion.IProjection NHibernate.Linq.Visitors.GroupingArgumentsVisitor::get_Projection()
    IL_002c:  call       void NHibernate.Linq.Util.CriteriaUtil::SetProjectionIfNotNull(class [NHibernate]NHibernate.ICriteria,
                                                                                        class [NHibernate]NHibernate.Criterion.IProjection)
    IL_0031:  nop
    IL_0032:  ret
  } // end of method RootVisitor::HandleGroupByCall

  .method private hidebysig instance void 
          HandleSelectManyCall(class [System.Core]System.Linq.Expressions.MethodCallExpression 'call') cil managed
  {
    // Code size       202 (0xca)
    .maxstack  3
    .locals init (class [System.Core]System.Linq.Expressions.LambdaExpression V_0,
             class [System.Core]System.Linq.Expressions.LambdaExpression V_1,
             string V_2,
             class NHibernate.Linq.Visitors.SelectManyVisitor V_3,
             class NHibernate.Linq.Visitors.SelectArgumentsVisitor V_4,
             bool V_5)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_000d:  call       class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Util.LinqUtil::StripQuotes(class [System.Core]System.Linq.Expressions.Expression)
    IL_0012:  castclass  [System.Core]System.Linq.Expressions.LambdaExpression
    IL_0017:  stloc.0
    IL_0018:  ldnull
    IL_0019:  stloc.1
    IL_001a:  ldarg.1
    IL_001b:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0020:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Count()
    IL_0025:  ldc.i4.3
    IL_0026:  ceq
    IL_0028:  ldc.i4.0
    IL_0029:  ceq
    IL_002b:  stloc.s    V_5
    IL_002d:  ldloc.s    V_5
    IL_002f:  brtrue.s   IL_0076

    IL_0031:  nop
    IL_0032:  ldarg.1
    IL_0033:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0038:  ldc.i4.2
    IL_0039:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_003e:  call       class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Util.LinqUtil::StripQuotes(class [System.Core]System.Linq.Expressions.Expression)
    IL_0043:  castclass  [System.Core]System.Linq.Expressions.LambdaExpression
    IL_0048:  stloc.1
    IL_0049:  ldloc.1
    IL_004a:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.ParameterExpression> [System.Core]System.Linq.Expressions.LambdaExpression::get_Parameters()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.ParameterExpression>::get_Item(int32)
    IL_0055:  callvirt   instance string [System.Core]System.Linq.Expressions.ParameterExpression::get_Name()
    IL_005a:  stloc.2
    IL_005b:  ldarg.0
    IL_005c:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.RootVisitor::rootCriteria
    IL_0061:  ldloc.2
    IL_0062:  newobj     instance void NHibernate.Linq.Visitors.SelectManyVisitor::.ctor(class [NHibernate]NHibernate.ICriteria,
                                                                                         string)
    IL_0067:  stloc.3
    IL_0068:  ldloc.3
    IL_0069:  ldloc.0
    IL_006a:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.LambdaExpression::get_Body()
    IL_006f:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0074:  pop
    IL_0075:  nop
    IL_0076:  ldloc.1
    IL_0077:  ldnull
    IL_0078:  ceq
    IL_007a:  stloc.s    V_5
    IL_007c:  ldloc.s    V_5
    IL_007e:  brtrue.s   IL_00c9

    IL_0080:  nop
    IL_0081:  ldarg.0
    IL_0082:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.RootVisitor::rootCriteria
    IL_0087:  ldarg.0
    IL_0088:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.RootVisitor::session
    IL_008d:  newobj     instance void NHibernate.Linq.Visitors.SelectArgumentsVisitor::.ctor(class [NHibernate]NHibernate.ICriteria,
                                                                                              class [NHibernate]NHibernate.ISession)
    IL_0092:  stloc.s    V_4
    IL_0094:  ldloc.s    V_4
    IL_0096:  ldloc.1
    IL_0097:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.LambdaExpression::get_Body()
    IL_009c:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_00a1:  pop
    IL_00a2:  ldarg.0
    IL_00a3:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.RootVisitor::rootCriteria
    IL_00a8:  ldloc.s    V_4
    IL_00aa:  callvirt   instance class [NHibernate]NHibernate.Criterion.IProjection NHibernate.Linq.Visitors.SelectArgumentsVisitor::get_Projection()
    IL_00af:  call       void NHibernate.Linq.Util.CriteriaUtil::SetProjectionIfNotNull(class [NHibernate]NHibernate.ICriteria,
                                                                                        class [NHibernate]NHibernate.Criterion.IProjection)
    IL_00b4:  nop
    IL_00b5:  ldarg.0
    IL_00b6:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.RootVisitor::rootCriteria
    IL_00bb:  ldloc.s    V_4
    IL_00bd:  callvirt   instance class [NHibernate]NHibernate.Transform.IResultTransformer NHibernate.Linq.Visitors.SelectArgumentsVisitor::get_Transformer()
    IL_00c2:  call       void NHibernate.Linq.Util.CriteriaUtil::SetResultTransformerIfNotNull(class [NHibernate]NHibernate.ICriteria,
                                                                                               class [NHibernate]NHibernate.Transform.IResultTransformer)
    IL_00c7:  nop
    IL_00c8:  nop
    IL_00c9:  ret
  } // end of method RootVisitor::HandleSelectManyCall

  .method private hidebysig instance void 
          HandleImmediateResultsCall(class [System.Core]System.Linq.Expressions.MethodCallExpression 'call') cil managed
  {
    // Code size       104 (0x68)
    .maxstack  4
    .locals init (class [mscorlib]System.Type V_0,
             class [mscorlib]System.Type V_1,
             class NHibernate.Linq.Visitors.IImmediateResultsVisitor V_2,
             class [mscorlib]System.Type[] V_3,
             object[] V_4)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [System.Core]System.Linq.Expressions.MethodCallExpression::get_Method()
    IL_0007:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Reflection.MethodInfo::get_ReturnType()
    IL_000c:  stloc.0
    IL_000d:  ldtoken    NHibernate.Linq.Visitors.ImmediateResultsVisitor`1
    IL_0012:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0017:  ldc.i4.1
    IL_0018:  newarr     [mscorlib]System.Type
    IL_001d:  stloc.3
    IL_001e:  ldloc.3
    IL_001f:  ldc.i4.0
    IL_0020:  ldloc.0
    IL_0021:  stelem.ref
    IL_0022:  ldloc.3
    IL_0023:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Type::MakeGenericType(class [mscorlib]System.Type[])
    IL_0028:  stloc.1
    IL_0029:  ldloc.1
    IL_002a:  ldc.i4.2
    IL_002b:  newarr     [mscorlib]System.Object
    IL_0030:  stloc.s    V_4
    IL_0032:  ldloc.s    V_4
    IL_0034:  ldc.i4.0
    IL_0035:  ldarg.0
    IL_0036:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.RootVisitor::session
    IL_003b:  stelem.ref
    IL_003c:  ldloc.s    V_4
    IL_003e:  ldc.i4.1
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.RootVisitor::rootCriteria
    IL_0045:  stelem.ref
    IL_0046:  ldloc.s    V_4
    IL_0048:  call       object [mscorlib]System.Activator::CreateInstance(class [mscorlib]System.Type,
                                                                           object[])
    IL_004d:  castclass  NHibernate.Linq.Visitors.IImmediateResultsVisitor
    IL_0052:  stloc.2
    IL_0053:  ldarg.0
    IL_0054:  ldc.i4.1
    IL_0055:  stfld      bool NHibernate.Linq.Visitors.RootVisitor::hasResults
    IL_005a:  ldarg.0
    IL_005b:  ldloc.2
    IL_005c:  ldarg.1
    IL_005d:  callvirt   instance object NHibernate.Linq.Visitors.IImmediateResultsVisitor::GetResults(class [System.Core]System.Linq.Expressions.MethodCallExpression)
    IL_0062:  stfld      object NHibernate.Linq.Visitors.RootVisitor::results
    IL_0067:  ret
  } // end of method RootVisitor::HandleImmediateResultsCall

  .method private hidebysig instance void 
          HandleSelectMethodCall(class [System.Core]System.Linq.Expressions.MethodCallExpression 'call') cil managed
  {
    // Code size       91 (0x5b)
    .maxstack  4
    .locals init (class NHibernate.Linq.Visitors.SelectArgumentsVisitor V_0,
             bool V_1,
             class [NHibernate]NHibernate.Criterion.IProjection[] V_2)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [System.Core]System.Linq.Expressions.MethodCallExpression::get_Method()
    IL_0007:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_000c:  call       bool NHibernate.Linq.Visitors.SelectArgumentsVisitor::SupportsMethod(string)
    IL_0011:  ldc.i4.0
    IL_0012:  ceq
    IL_0014:  stloc.1
    IL_0015:  ldloc.1
    IL_0016:  brtrue.s   IL_0053

    IL_0018:  nop
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.RootVisitor::rootCriteria
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.RootVisitor::session
    IL_0025:  newobj     instance void NHibernate.Linq.Visitors.SelectArgumentsVisitor::.ctor(class [NHibernate]NHibernate.ICriteria,
                                                                                              class [NHibernate]NHibernate.ISession)
    IL_002a:  stloc.0
    IL_002b:  ldloc.0
    IL_002c:  ldarg.1
    IL_002d:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0032:  pop
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.RootVisitor::rootCriteria
    IL_0039:  ldc.i4.1
    IL_003a:  newarr     [NHibernate]NHibernate.Criterion.IProjection
    IL_003f:  stloc.2
    IL_0040:  ldloc.2
    IL_0041:  ldc.i4.0
    IL_0042:  ldloc.0
    IL_0043:  callvirt   instance class [NHibernate]NHibernate.Criterion.IProjection NHibernate.Linq.Visitors.SelectArgumentsVisitor::get_Projection()
    IL_0048:  stelem.ref
    IL_0049:  ldloc.2
    IL_004a:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::SetProjection(class [NHibernate]NHibernate.Criterion.IProjection[])
    IL_004f:  pop
    IL_0050:  nop
    IL_0051:  br.s       IL_005a

    IL_0053:  nop
    IL_0054:  newobj     instance void [mscorlib]System.NotImplementedException::.ctor()
    IL_0059:  throw

    IL_005a:  ret
  } // end of method RootVisitor::HandleSelectMethodCall

  .property instance object Results()
  {
    .get instance object NHibernate.Linq.Visitors.RootVisitor::get_Results()
  } // end of property RootVisitor::Results
} // end of class NHibernate.Linq.Visitors.RootVisitor

.class public auto ansi beforefieldinit NHibernate.Linq.Visitors.SelectArgumentsVisitor
       extends NHibernate.Linq.Visitors.NHibernateExpressionVisitor
{
  .field private static initonly class [NHibernate]NHibernate.Dialect.Function.ISQLFunction arithmaticAddition
  .field private static initonly class [NHibernate]NHibernate.Dialect.Function.ISQLFunction arithmaticDivide
  .field private static initonly class [NHibernate]NHibernate.Dialect.Function.ISQLFunction arithmaticMultiply
  .field private static initonly class [NHibernate]NHibernate.Dialect.Function.ISQLFunction arithmaticSubstract
  .field private initonly class [NHibernate]NHibernate.ICriteria _rootCriteria
  .field private initonly class [NHibernate]NHibernate.ISession _session
  .field private initonly class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> _projections
  .field private class [NHibernate]NHibernate.Transform.IResultTransformer _transformer
  .field private class [NHibernate]NHibernate.Criterion.ICriteriaQuery _criteriaQuery
  .field private static class [System.Core]System.Func`2<class [System.Core]System.Linq.Expressions.Expression,bool> 'CS$<>9__CachedAnonymousMethodDelegate1'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance class [NHibernate]NHibernate.Criterion.IProjection 
          get_Projection() cil managed
  {
    // Code size       135 (0x87)
    .maxstack  2
    .locals init (class [NHibernate]NHibernate.Criterion.ProjectionList V_0,
             class [NHibernate]NHibernate.Criterion.IProjection V_1,
             class [NHibernate]NHibernate.Criterion.IProjection V_2,
             bool V_3,
             valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [NHibernate]NHibernate.Criterion.IProjection> V_4)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.SelectArgumentsVisitor::_projections
    IL_0007:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::get_Count()
    IL_000c:  ldc.i4.0
    IL_000d:  ceq
    IL_000f:  ldc.i4.0
    IL_0010:  ceq
    IL_0012:  stloc.3
    IL_0013:  ldloc.3
    IL_0014:  brtrue.s   IL_001a

    IL_0016:  ldnull
    IL_0017:  stloc.2
    IL_0018:  br.s       IL_0085

    IL_001a:  ldarg.0
    IL_001b:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.SelectArgumentsVisitor::_projections
    IL_0020:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::get_Count()
    IL_0025:  ldc.i4.1
    IL_0026:  ceq
    IL_0028:  ldc.i4.0
    IL_0029:  ceq
    IL_002b:  stloc.3
    IL_002c:  ldloc.3
    IL_002d:  brtrue.s   IL_003e

    IL_002f:  ldarg.0
    IL_0030:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.SelectArgumentsVisitor::_projections
    IL_0035:  ldc.i4.0
    IL_0036:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::get_Item(int32)
    IL_003b:  stloc.2
    IL_003c:  br.s       IL_0085

    IL_003e:  call       class [NHibernate]NHibernate.Criterion.ProjectionList [NHibernate]NHibernate.Criterion.Projections::ProjectionList()
    IL_0043:  stloc.0
    IL_0044:  nop
    IL_0045:  ldarg.0
    IL_0046:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.SelectArgumentsVisitor::_projections
    IL_004b:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::GetEnumerator()
    IL_0050:  stloc.s    V_4
    .try
    {
      IL_0052:  br.s       IL_0064

      IL_0054:  ldloca.s   V_4
      IL_0056:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [NHibernate]NHibernate.Criterion.IProjection>::get_Current()
      IL_005b:  stloc.1
      IL_005c:  ldloc.0
      IL_005d:  ldloc.1
      IL_005e:  callvirt   instance class [NHibernate]NHibernate.Criterion.ProjectionList [NHibernate]NHibernate.Criterion.ProjectionList::Add(class [NHibernate]NHibernate.Criterion.IProjection)
      IL_0063:  pop
      IL_0064:  ldloca.s   V_4
      IL_0066:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [NHibernate]NHibernate.Criterion.IProjection>::MoveNext()
      IL_006b:  stloc.3
      IL_006c:  ldloc.3
      IL_006d:  brtrue.s   IL_0054

      IL_006f:  leave.s    IL_0080

    }  // end .try
    finally
    {
      IL_0071:  ldloca.s   V_4
      IL_0073:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [NHibernate]NHibernate.Criterion.IProjection>
      IL_0079:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_007e:  nop
      IL_007f:  endfinally
    }  // end handler
    IL_0080:  nop
    IL_0081:  ldloc.0
    IL_0082:  stloc.2
    IL_0083:  br.s       IL_0085

    IL_0085:  ldloc.2
    IL_0086:  ret
  } // end of method SelectArgumentsVisitor::get_Projection

  .method public hidebysig specialname instance class [NHibernate]NHibernate.Transform.IResultTransformer 
          get_Transformer() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (class [NHibernate]NHibernate.Transform.IResultTransformer V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.Transform.IResultTransformer NHibernate.Linq.Visitors.SelectArgumentsVisitor::_transformer
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method SelectArgumentsVisitor::get_Transformer

  .method private hidebysig specialname instance class [NHibernate]NHibernate.Criterion.ICriteriaQuery 
          get_CriteriaQuery() cil managed
  {
    // Code size       67 (0x43)
    .maxstack  4
    .locals init (class [NHibernate]NHibernate.Criterion.ICriteriaQuery V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.Criterion.ICriteriaQuery NHibernate.Linq.Visitors.SelectArgumentsVisitor::_criteriaQuery
    IL_0007:  ldnull
    IL_0008:  ceq
    IL_000a:  ldc.i4.0
    IL_000b:  ceq
    IL_000d:  stloc.1
    IL_000e:  ldloc.1
    IL_000f:  brtrue.s   IL_0038

    IL_0011:  ldarg.0
    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.SelectArgumentsVisitor::_rootCriteria
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.SelectArgumentsVisitor::_session
    IL_001e:  callvirt   instance class [NHibernate]NHibernate.ISessionFactory [NHibernate]NHibernate.ISession::get_SessionFactory()
    IL_0023:  ldarg.0
    IL_0024:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.SelectArgumentsVisitor::_rootCriteria
    IL_0029:  call       string NHibernate.Linq.Util.CriteriaUtil::GetEntityOrClassName(class [NHibernate]NHibernate.ICriteria)
    IL_002e:  call       class [NHibernate]NHibernate.Criterion.ICriteriaQuery NHibernate.Linq.Util.CriteriaUtil::GenerateCriteriaQuery(class [NHibernate]NHibernate.ICriteria,
                                                                                                                                        class [NHibernate]NHibernate.ISessionFactory,
                                                                                                                                        string)
    IL_0033:  stfld      class [NHibernate]NHibernate.Criterion.ICriteriaQuery NHibernate.Linq.Visitors.SelectArgumentsVisitor::_criteriaQuery
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class [NHibernate]NHibernate.Criterion.ICriteriaQuery NHibernate.Linq.Visitors.SelectArgumentsVisitor::_criteriaQuery
    IL_003e:  stloc.0
    IL_003f:  br.s       IL_0041

    IL_0041:  ldloc.0
    IL_0042:  ret
  } // end of method SelectArgumentsVisitor::get_CriteriaQuery

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [NHibernate]NHibernate.ICriteria rootCriteria,
                               class [NHibernate]NHibernate.ISession session) cil managed
  {
    // Code size       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void NHibernate.Linq.Visitors.NHibernateExpressionVisitor::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.SelectArgumentsVisitor::_rootCriteria
    IL_000f:  ldarg.0
    IL_0010:  ldarg.2
    IL_0011:  stfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.SelectArgumentsVisitor::_session
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::.ctor()
    IL_001c:  stfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.SelectArgumentsVisitor::_projections
    IL_0021:  nop
    IL_0022:  ret
  } // end of method SelectArgumentsVisitor::.ctor

  .method public hidebysig static bool  SupportsMethod(string methodName) cil managed
  {
    // Code size       85 (0x55)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  nop
    IL_0001:  ldstr      "Average"
    IL_0006:  ldarg.0
    IL_0007:  callvirt   instance bool [mscorlib]System.String::Equals(string)
    IL_000c:  brtrue.s   IL_004f

    IL_000e:  ldstr      "Count"
    IL_0013:  ldarg.0
    IL_0014:  callvirt   instance bool [mscorlib]System.String::Equals(string)
    IL_0019:  brtrue.s   IL_004f

    IL_001b:  ldstr      "LongCount"
    IL_0020:  ldarg.0
    IL_0021:  callvirt   instance bool [mscorlib]System.String::Equals(string)
    IL_0026:  brtrue.s   IL_004f

    IL_0028:  ldstr      "Max"
    IL_002d:  ldarg.0
    IL_002e:  callvirt   instance bool [mscorlib]System.String::Equals(string)
    IL_0033:  brtrue.s   IL_004f

    IL_0035:  ldstr      "Min"
    IL_003a:  ldarg.0
    IL_003b:  callvirt   instance bool [mscorlib]System.String::Equals(string)
    IL_0040:  brtrue.s   IL_004f

    IL_0042:  ldstr      "Sum"
    IL_0047:  ldarg.0
    IL_0048:  callvirt   instance bool [mscorlib]System.String::Equals(string)
    IL_004d:  br.s       IL_0050

    IL_004f:  ldc.i4.1
    IL_0050:  stloc.0
    IL_0051:  br.s       IL_0053

    IL_0053:  ldloc.0
    IL_0054:  ret
  } // end of method SelectArgumentsVisitor::SupportsMethod

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitMethodCall(class [System.Core]System.Linq.Expressions.MethodCallExpression expr) cil managed
  {
    // Code size       568 (0x238)
    .maxstack  5
    .locals init (class NHibernate.Linq.Visitors.MemberNameVisitor V_0,
             class NHibernate.Linq.Expressions.CollectionAccessExpression V_1,
             string V_2,
             class [NHibernate]NHibernate.Criterion.IProjection V_3,
             class [NHibernate]NHibernate.Criterion.PropertyProjection V_4,
             class [System.Core]System.Linq.Expressions.Expression V_5,
             bool V_6,
             string V_7,
             int32 V_8)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [System.Core]System.Linq.Expressions.MethodCallExpression::get_Method()
    IL_0007:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_000c:  call       bool NHibernate.Linq.Visitors.WhereArgumentsVisitor::SupportsMethod(string)
    IL_0011:  ldc.i4.0
    IL_0012:  ceq
    IL_0014:  stloc.s    V_6
    IL_0016:  ldloc.s    V_6
    IL_0018:  brtrue.s   IL_0028

    IL_001a:  ldarg.0
    IL_001b:  ldarg.1
    IL_001c:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.SelectArgumentsVisitor::VisitCriterionExpression(class [System.Core]System.Linq.Expressions.Expression)
    IL_0021:  stloc.s    V_5
    IL_0023:  br         IL_0235

    IL_0028:  ldarg.0
    IL_0029:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.SelectArgumentsVisitor::_rootCriteria
    IL_002e:  ldc.i4.1
    IL_002f:  newobj     instance void NHibernate.Linq.Visitors.MemberNameVisitor::.ctor(class [NHibernate]NHibernate.ICriteria,
                                                                                         bool)
    IL_0034:  stloc.0
    IL_0035:  ldloc.0
    IL_0036:  ldarg.1
    IL_0037:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_003c:  ldc.i4.0
    IL_003d:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_0042:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0047:  pop
    IL_0048:  ldloc.0
    IL_0049:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.MemberNameVisitor::get_CurrentExpression()
    IL_004e:  castclass  NHibernate.Linq.Expressions.CollectionAccessExpression
    IL_0053:  stloc.1
    IL_0054:  ldnull
    IL_0055:  stloc.2
    IL_0056:  ldnull
    IL_0057:  stloc.3
    IL_0058:  ldarg.1
    IL_0059:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_005e:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Count()
    IL_0063:  ldc.i4.1
    IL_0064:  cgt
    IL_0066:  ldc.i4.0
    IL_0067:  ceq
    IL_0069:  stloc.s    V_6
    IL_006b:  ldloc.s    V_6
    IL_006d:  brtrue.s   IL_008b

    IL_006f:  nop
    IL_0070:  ldarg.0
    IL_0071:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.SelectArgumentsVisitor::_rootCriteria
    IL_0076:  ldarg.1
    IL_0077:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_007c:  ldc.i4.1
    IL_007d:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_0082:  call       string NHibernate.Linq.Visitors.MemberNameVisitor::GetMemberName(class [NHibernate]NHibernate.ICriteria,
                                                                                          class [System.Core]System.Linq.Expressions.Expression)
    IL_0087:  stloc.2
    IL_0088:  nop
    IL_0089:  br.s       IL_00b1

    IL_008b:  ldarg.0
    IL_008c:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.SelectArgumentsVisitor::_rootCriteria
    IL_0091:  call       class [NHibernate]NHibernate.Criterion.IProjection NHibernate.Linq.Util.CriteriaUtil::GetProjection(class [NHibernate]NHibernate.ICriteria)
    IL_0096:  isinst     [NHibernate]NHibernate.Criterion.PropertyProjection
    IL_009b:  dup
    IL_009c:  stloc.s    V_4
    IL_009e:  ldnull
    IL_009f:  ceq
    IL_00a1:  stloc.s    V_6
    IL_00a3:  ldloc.s    V_6
    IL_00a5:  brtrue.s   IL_00b1

    IL_00a7:  nop
    IL_00a8:  ldloc.s    V_4
    IL_00aa:  callvirt   instance string [NHibernate]NHibernate.Criterion.PropertyProjection::get_PropertyName()
    IL_00af:  stloc.2
    IL_00b0:  nop
    IL_00b1:  ldarg.1
    IL_00b2:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [System.Core]System.Linq.Expressions.MethodCallExpression::get_Method()
    IL_00b7:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_00bc:  stloc.s    V_7
    IL_00be:  ldloc.s    V_7
    IL_00c0:  brfalse    IL_0203

    IL_00c5:  volatile.
    IL_00c7:  ldsfld     class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32> '<PrivateImplementationDetails>{F233971D-B03F-42A4-937F-644633406AC4}'::'$$method0x600016a-1'
    IL_00cc:  brtrue.s   IL_0123

    IL_00ce:  ldc.i4.6
    IL_00cf:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::.ctor(int32)
    IL_00d4:  dup
    IL_00d5:  ldstr      "Average"
    IL_00da:  ldc.i4.0
    IL_00db:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_00e0:  dup
    IL_00e1:  ldstr      "Count"
    IL_00e6:  ldc.i4.1
    IL_00e7:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_00ec:  dup
    IL_00ed:  ldstr      "LongCount"
    IL_00f2:  ldc.i4.2
    IL_00f3:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_00f8:  dup
    IL_00f9:  ldstr      "Max"
    IL_00fe:  ldc.i4.3
    IL_00ff:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_0104:  dup
    IL_0105:  ldstr      "Min"
    IL_010a:  ldc.i4.4
    IL_010b:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_0110:  dup
    IL_0111:  ldstr      "Sum"
    IL_0116:  ldc.i4.5
    IL_0117:  call       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::Add(!0,
                                                                                                                  !1)
    IL_011c:  volatile.
    IL_011e:  stsfld     class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32> '<PrivateImplementationDetails>{F233971D-B03F-42A4-937F-644633406AC4}'::'$$method0x600016a-1'
    IL_0123:  volatile.
    IL_0125:  ldsfld     class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32> '<PrivateImplementationDetails>{F233971D-B03F-42A4-937F-644633406AC4}'::'$$method0x600016a-1'
    IL_012a:  ldloc.s    V_7
    IL_012c:  ldloca.s   V_8
    IL_012e:  call       instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32>::TryGetValue(!0,
                                                                                                                          !1&)
    IL_0133:  brfalse    IL_0203

    IL_0138:  ldloc.s    V_8
    IL_013a:  switch     ( 
                          IL_015c,
                          IL_0168,
                          IL_0168,
                          IL_01e8,
                          IL_01f1,
                          IL_01fa)
    IL_0157:  br         IL_0203

    IL_015c:  ldloc.2
    IL_015d:  call       class [NHibernate]NHibernate.Criterion.AggregateProjection [NHibernate]NHibernate.Criterion.Projections::Avg(string)
    IL_0162:  stloc.3
    IL_0163:  br         IL_0223

    IL_0168:  ldarg.1
    IL_0169:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_016e:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Count()
    IL_0173:  ldc.i4.1
    IL_0174:  cgt
    IL_0176:  ldc.i4.0
    IL_0177:  ceq
    IL_0179:  stloc.s    V_6
    IL_017b:  ldloc.s    V_6
    IL_017d:  brtrue.s   IL_01a8

    IL_017f:  ldarg.0
    IL_0180:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.SelectArgumentsVisitor::_rootCriteria
    IL_0185:  ldarg.0
    IL_0186:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.SelectArgumentsVisitor::_rootCriteria
    IL_018b:  ldarg.0
    IL_018c:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.SelectArgumentsVisitor::_session
    IL_0191:  ldarg.1
    IL_0192:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0197:  ldc.i4.1
    IL_0198:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_019d:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::GetCriterion(class [NHibernate]NHibernate.ICriteria,
                                                                                                                                                                                                  class [NHibernate]NHibernate.ISession,
                                                                                                                                                                                                  class [System.Core]System.Linq.Expressions.Expression)
    IL_01a2:  call       void NHibernate.Linq.Util.CriteriaUtil::Add(class [NHibernate]NHibernate.ICriteria,
                                                                     class [mscorlib]System.Collections.Generic.IEnumerable`1<class [NHibernate]NHibernate.Criterion.ICriterion>)
    IL_01a7:  nop
    IL_01a8:  ldloc.1
    IL_01a9:  ldnull
    IL_01aa:  ceq
    IL_01ac:  stloc.s    V_6
    IL_01ae:  ldloc.s    V_6
    IL_01b0:  brtrue.s   IL_01de

    IL_01b2:  nop
    IL_01b3:  ldloc.0
    IL_01b4:  callvirt   instance string NHibernate.Linq.Visitors.MemberNameVisitor::get_MemberName()
    IL_01b9:  ldstr      "."
    IL_01be:  ldloc.1
    IL_01bf:  callvirt   instance class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Expressions.CollectionAccessExpression::get_ElementExpression()
    IL_01c4:  callvirt   instance class [NHibernate]NHibernate.Metadata.IClassMetadata NHibernate.Linq.Expressions.EntityExpression::get_MetaData()
    IL_01c9:  callvirt   instance string [NHibernate]NHibernate.Metadata.IClassMetadata::get_IdentifierPropertyName()
    IL_01ce:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_01d3:  stloc.2
    IL_01d4:  ldloc.2
    IL_01d5:  call       class [NHibernate]NHibernate.Criterion.CountProjection [NHibernate]NHibernate.Criterion.Projections::Count(string)
    IL_01da:  stloc.3
    IL_01db:  nop
    IL_01dc:  br.s       IL_01e6

    IL_01de:  nop
    IL_01df:  call       class [NHibernate]NHibernate.Criterion.IProjection [NHibernate]NHibernate.Criterion.Projections::RowCount()
    IL_01e4:  stloc.3
    IL_01e5:  nop
    IL_01e6:  br.s       IL_0223

    IL_01e8:  ldloc.2
    IL_01e9:  call       class [NHibernate]NHibernate.Criterion.AggregateProjection [NHibernate]NHibernate.Criterion.Projections::Max(string)
    IL_01ee:  stloc.3
    IL_01ef:  br.s       IL_0223

    IL_01f1:  ldloc.2
    IL_01f2:  call       class [NHibernate]NHibernate.Criterion.AggregateProjection [NHibernate]NHibernate.Criterion.Projections::Min(string)
    IL_01f7:  stloc.3
    IL_01f8:  br.s       IL_0223

    IL_01fa:  ldloc.2
    IL_01fb:  call       class [NHibernate]NHibernate.Criterion.AggregateProjection [NHibernate]NHibernate.Criterion.Projections::Sum(string)
    IL_0200:  stloc.3
    IL_0201:  br.s       IL_0223

    IL_0203:  ldstr      "The method '"
    IL_0208:  ldarg.1
    IL_0209:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [System.Core]System.Linq.Expressions.MethodCallExpression::get_Method()
    IL_020e:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_0213:  ldstr      "' is not implemented."
    IL_0218:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_021d:  newobj     instance void [mscorlib]System.NotImplementedException::.ctor(string)
    IL_0222:  throw

    IL_0223:  ldarg.0
    IL_0224:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.SelectArgumentsVisitor::_projections
    IL_0229:  ldloc.3
    IL_022a:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::Add(!0)
    IL_022f:  nop
    IL_0230:  ldarg.1
    IL_0231:  stloc.s    V_5
    IL_0233:  br.s       IL_0235

    IL_0235:  ldloc.s    V_5
    IL_0237:  ret
  } // end of method SelectArgumentsVisitor::VisitMethodCall

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitConstant(class [System.Core]System.Linq.Expressions.ConstantExpression expr) cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  3
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.SelectArgumentsVisitor::_projections
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance object [System.Core]System.Linq.Expressions.ConstantExpression::get_Value()
    IL_000d:  newobj     instance void [NHibernate]NHibernate.Criterion.ConstantProjection::.ctor(object)
    IL_0012:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::Add(!0)
    IL_0017:  nop
    IL_0018:  ldarg.1
    IL_0019:  stloc.0
    IL_001a:  br.s       IL_001c

    IL_001c:  ldloc.0
    IL_001d:  ret
  } // end of method SelectArgumentsVisitor::VisitConstant

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.NewExpression 
          VisitNew(class [System.Core]System.Linq.Expressions.NewExpression expr) cil managed
  {
    // Code size       202 (0xca)
    .maxstack  4
    .locals init (class [System.Core]System.Linq.Expressions.NewExpression V_0,
             class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.Expression> V_1,
             class [System.Core]System.Linq.Expressions.Expression V_2,
             string V_3,
             class [System.Core]System.Linq.Expressions.NewExpression V_4,
             bool V_5,
             class [mscorlib]System.Collections.Generic.IEnumerator`1<class [System.Core]System.Linq.Expressions.Expression> V_6)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  call       instance class [System.Core]System.Linq.Expressions.NewExpression NHibernate.Linq.Visitors.ExpressionVisitor::VisitNew(class [System.Core]System.Linq.Expressions.NewExpression)
    IL_0008:  stloc.0
    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  newobj     instance void NHibernate.Transform.TypeSafeConstructorMemberInitResultTransformer::.ctor(class [System.Core]System.Linq.Expressions.NewExpression)
    IL_0010:  stfld      class [NHibernate]NHibernate.Transform.IResultTransformer NHibernate.Linq.Visitors.SelectArgumentsVisitor::_transformer
    IL_0015:  ldarg.1
    IL_0016:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.NewExpression::get_Arguments()
    IL_001b:  ldsfld     class [System.Core]System.Func`2<class [System.Core]System.Linq.Expressions.Expression,bool> NHibernate.Linq.Visitors.SelectArgumentsVisitor::'CS$<>9__CachedAnonymousMethodDelegate1'
    IL_0020:  brtrue.s   IL_0035

    IL_0022:  ldnull
    IL_0023:  ldftn      bool NHibernate.Linq.Visitors.SelectArgumentsVisitor::'<VisitNew>b__0'(class [System.Core]System.Linq.Expressions.Expression)
    IL_0029:  newobj     instance void class [System.Core]System.Func`2<class [System.Core]System.Linq.Expressions.Expression,bool>::.ctor(object,
                                                                                                                                           native int)
    IL_002e:  stsfld     class [System.Core]System.Func`2<class [System.Core]System.Linq.Expressions.Expression,bool> NHibernate.Linq.Visitors.SelectArgumentsVisitor::'CS$<>9__CachedAnonymousMethodDelegate1'
    IL_0033:  br.s       IL_0035

    IL_0035:  ldsfld     class [System.Core]System.Func`2<class [System.Core]System.Linq.Expressions.Expression,bool> NHibernate.Linq.Visitors.SelectArgumentsVisitor::'CS$<>9__CachedAnonymousMethodDelegate1'
    IL_003a:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> [System.Core]System.Linq.Enumerable::Where<class [System.Core]System.Linq.Expressions.Expression>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                         class [System.Core]System.Func`2<!!0,bool>)
    IL_003f:  stloc.1
    IL_0040:  ldloc.1
    IL_0041:  call       bool [System.Core]System.Linq.Enumerable::Any<class [System.Core]System.Linq.Expressions.Expression>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0046:  ldc.i4.0
    IL_0047:  ceq
    IL_0049:  stloc.s    V_5
    IL_004b:  ldloc.s    V_5
    IL_004d:  brtrue.s   IL_00c2

    IL_004f:  nop
    IL_0050:  nop
    IL_0051:  ldarg.1
    IL_0052:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.NewExpression::get_Arguments()
    IL_0057:  ldloc.1
    IL_0058:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> [System.Core]System.Linq.Enumerable::Except<class [System.Core]System.Linq.Expressions.Expression>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                          class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_005d:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Core]System.Linq.Expressions.Expression>::GetEnumerator()
    IL_0062:  stloc.s    V_6
    .try
    {
      IL_0064:  br.s       IL_009d

      IL_0066:  ldloc.s    V_6
      IL_0068:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class [System.Core]System.Linq.Expressions.Expression>::get_Current()
      IL_006d:  stloc.2
      IL_006e:  nop
      IL_006f:  ldarg.0
      IL_0070:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.SelectArgumentsVisitor::_rootCriteria
      IL_0075:  ldloc.2
      IL_0076:  call       string NHibernate.Linq.Visitors.MemberNameVisitor::GetMemberName(class [NHibernate]NHibernate.ICriteria,
                                                                                            class [System.Core]System.Linq.Expressions.Expression)
      IL_007b:  stloc.3
      IL_007c:  ldloc.3
      IL_007d:  call       bool [mscorlib]System.String::IsNullOrEmpty(string)
      IL_0082:  stloc.s    V_5
      IL_0084:  ldloc.s    V_5
      IL_0086:  brtrue.s   IL_009c

      IL_0088:  nop
      IL_0089:  ldarg.0
      IL_008a:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.SelectArgumentsVisitor::_projections
      IL_008f:  ldloc.3
      IL_0090:  call       class [NHibernate]NHibernate.Criterion.PropertyProjection [NHibernate]NHibernate.Criterion.Projections::GroupProperty(string)
      IL_0095:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::Add(!0)
      IL_009a:  nop
      IL_009b:  nop
      IL_009c:  nop
      IL_009d:  ldloc.s    V_6
      IL_009f:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_00a4:  stloc.s    V_5
      IL_00a6:  ldloc.s    V_5
      IL_00a8:  brtrue.s   IL_0066

      IL_00aa:  leave.s    IL_00c0

    }  // end .try
    finally
    {
      IL_00ac:  ldloc.s    V_6
      IL_00ae:  ldnull
      IL_00af:  ceq
      IL_00b1:  stloc.s    V_5
      IL_00b3:  ldloc.s    V_5
      IL_00b5:  brtrue.s   IL_00bf

      IL_00b7:  ldloc.s    V_6
      IL_00b9:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_00be:  nop
      IL_00bf:  endfinally
    }  // end handler
    IL_00c0:  nop
    IL_00c1:  nop
    IL_00c2:  ldloc.0
    IL_00c3:  stloc.s    V_4
    IL_00c5:  br.s       IL_00c7

    IL_00c7:  ldloc.s    V_4
    IL_00c9:  ret
  } // end of method SelectArgumentsVisitor::VisitNew

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitMemberInit(class [System.Core]System.Linq.Expressions.MemberInitExpression expr) cil managed
  {
    // Code size       27 (0x1b)
    .maxstack  3
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             class [System.Core]System.Linq.Expressions.Expression V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::VisitMemberInit(class [System.Core]System.Linq.Expressions.MemberInitExpression)
    IL_0008:  stloc.0
    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  newobj     instance void NHibernate.Transform.TypeSafeConstructorMemberInitResultTransformer::.ctor(class [System.Core]System.Linq.Expressions.MemberInitExpression)
    IL_0010:  stfld      class [NHibernate]NHibernate.Transform.IResultTransformer NHibernate.Linq.Visitors.SelectArgumentsVisitor::_transformer
    IL_0015:  ldloc.0
    IL_0016:  stloc.1
    IL_0017:  br.s       IL_0019

    IL_0019:  ldloc.1
    IL_001a:  ret
  } // end of method SelectArgumentsVisitor::VisitMemberInit

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitConditional(class [System.Core]System.Linq.Expressions.ConditionalExpression expr) cil managed
  {
    // Code size       210 (0xd2)
    .maxstack  4
    .locals init (class NHibernate.Linq.Visitors.SelectArgumentsVisitor V_0,
             class NHibernate.Linq.Visitors.SelectArgumentsVisitor V_1,
             class NHibernate.Linq.Visitors.WhereArgumentsVisitor V_2,
             class [NHibernate]NHibernate.Criterion.Conjunction V_3,
             class [NHibernate]NHibernate.Criterion.ICriterion V_4,
             class [System.Core]System.Linq.Expressions.Expression V_5,
             class [mscorlib]System.Collections.Generic.IEnumerator`1<class [NHibernate]NHibernate.Criterion.ICriterion> V_6,
             bool V_7)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.SelectArgumentsVisitor::_rootCriteria
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.SelectArgumentsVisitor::_session
    IL_000d:  newobj     instance void NHibernate.Linq.Visitors.SelectArgumentsVisitor::.ctor(class [NHibernate]NHibernate.ICriteria,
                                                                                              class [NHibernate]NHibernate.ISession)
    IL_0012:  stloc.0
    IL_0013:  ldloc.0
    IL_0014:  ldarg.1
    IL_0015:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.ConditionalExpression::get_IfTrue()
    IL_001a:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_001f:  pop
    IL_0020:  ldarg.0
    IL_0021:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.SelectArgumentsVisitor::_rootCriteria
    IL_0026:  ldarg.0
    IL_0027:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.SelectArgumentsVisitor::_session
    IL_002c:  newobj     instance void NHibernate.Linq.Visitors.SelectArgumentsVisitor::.ctor(class [NHibernate]NHibernate.ICriteria,
                                                                                              class [NHibernate]NHibernate.ISession)
    IL_0031:  stloc.1
    IL_0032:  ldloc.1
    IL_0033:  ldarg.1
    IL_0034:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.ConditionalExpression::get_IfFalse()
    IL_0039:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_003e:  pop
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.SelectArgumentsVisitor::_rootCriteria
    IL_0045:  ldarg.0
    IL_0046:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.SelectArgumentsVisitor::_session
    IL_004b:  newobj     instance void NHibernate.Linq.Visitors.WhereArgumentsVisitor::.ctor(class [NHibernate]NHibernate.ICriteria,
                                                                                             class [NHibernate]NHibernate.ISession)
    IL_0050:  stloc.2
    IL_0051:  ldloc.2
    IL_0052:  ldarg.1
    IL_0053:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.ConditionalExpression::get_Test()
    IL_0058:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_005d:  pop
    IL_005e:  call       class [NHibernate]NHibernate.Criterion.Conjunction [NHibernate]NHibernate.Criterion.Restrictions::Conjunction()
    IL_0063:  stloc.3
    IL_0064:  nop
    IL_0065:  ldloc.2
    IL_0066:  callvirt   instance class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::get_CurrentCriterions()
    IL_006b:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.Generic.IEnumerable`1<class [NHibernate]NHibernate.Criterion.ICriterion>::GetEnumerator()
    IL_0070:  stloc.s    V_6
    .try
    {
      IL_0072:  br.s       IL_0088

      IL_0074:  ldloc.s    V_6
      IL_0076:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class [NHibernate]NHibernate.Criterion.ICriterion>::get_Current()
      IL_007b:  stloc.s    V_4
      IL_007d:  nop
      IL_007e:  ldloc.3
      IL_007f:  ldloc.s    V_4
      IL_0081:  callvirt   instance class [NHibernate]NHibernate.Criterion.Junction [NHibernate]NHibernate.Criterion.Junction::Add(class [NHibernate]NHibernate.Criterion.ICriterion)
      IL_0086:  pop
      IL_0087:  nop
      IL_0088:  ldloc.s    V_6
      IL_008a:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_008f:  stloc.s    V_7
      IL_0091:  ldloc.s    V_7
      IL_0093:  brtrue.s   IL_0074

      IL_0095:  leave.s    IL_00ab

    }  // end .try
    finally
    {
      IL_0097:  ldloc.s    V_6
      IL_0099:  ldnull
      IL_009a:  ceq
      IL_009c:  stloc.s    V_7
      IL_009e:  ldloc.s    V_7
      IL_00a0:  brtrue.s   IL_00aa

      IL_00a2:  ldloc.s    V_6
      IL_00a4:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_00a9:  nop
      IL_00aa:  endfinally
    }  // end handler
    IL_00ab:  nop
    IL_00ac:  ldarg.0
    IL_00ad:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.SelectArgumentsVisitor::_projections
    IL_00b2:  ldloc.3
    IL_00b3:  ldloc.0
    IL_00b4:  callvirt   instance class [NHibernate]NHibernate.Criterion.IProjection NHibernate.Linq.Visitors.SelectArgumentsVisitor::get_Projection()
    IL_00b9:  ldloc.1
    IL_00ba:  callvirt   instance class [NHibernate]NHibernate.Criterion.IProjection NHibernate.Linq.Visitors.SelectArgumentsVisitor::get_Projection()
    IL_00bf:  call       class [NHibernate]NHibernate.Criterion.IProjection [NHibernate]NHibernate.Criterion.Projections::Conditional(class [NHibernate]NHibernate.Criterion.ICriterion,
                                                                                                                                      class [NHibernate]NHibernate.Criterion.IProjection,
                                                                                                                                      class [NHibernate]NHibernate.Criterion.IProjection)
    IL_00c4:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::Add(!0)
    IL_00c9:  nop
    IL_00ca:  ldarg.1
    IL_00cb:  stloc.s    V_5
    IL_00cd:  br.s       IL_00cf

    IL_00cf:  ldloc.s    V_5
    IL_00d1:  ret
  } // end of method SelectArgumentsVisitor::VisitConditional

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitBinary(class [System.Core]System.Linq.Expressions.BinaryExpression expr) cil managed
  {
    // Code size       92 (0x5c)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             valuetype [System.Core]System.Linq.Expressions.ExpressionType V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.ExpressionType [System.Core]System.Linq.Expressions.Expression::get_NodeType()
    IL_0007:  stloc.1
    IL_0008:  ldloc.1
    IL_0009:  ldc.i4.s   12
    IL_000b:  bgt.s      IL_0018

    IL_000d:  ldloc.1
    IL_000e:  ldc.i4.0
    IL_000f:  beq.s      IL_0024

    IL_0011:  ldloc.1
    IL_0012:  ldc.i4.s   12
    IL_0014:  beq.s      IL_002e

    IL_0016:  br.s       IL_004c

    IL_0018:  ldloc.1
    IL_0019:  ldc.i4.s   26
    IL_001b:  beq.s      IL_0038

    IL_001d:  ldloc.1
    IL_001e:  ldc.i4.s   42
    IL_0020:  beq.s      IL_0042

    IL_0022:  br.s       IL_004c

    IL_0024:  ldarg.0
    IL_0025:  ldarg.1
    IL_0026:  call       instance void NHibernate.Linq.Visitors.SelectArgumentsVisitor::VisitAddExpression(class [System.Core]System.Linq.Expressions.BinaryExpression)
    IL_002b:  nop
    IL_002c:  br.s       IL_0056

    IL_002e:  ldarg.0
    IL_002f:  ldarg.1
    IL_0030:  call       instance void NHibernate.Linq.Visitors.SelectArgumentsVisitor::VisitDivideExpression(class [System.Core]System.Linq.Expressions.BinaryExpression)
    IL_0035:  nop
    IL_0036:  br.s       IL_0056

    IL_0038:  ldarg.0
    IL_0039:  ldarg.1
    IL_003a:  call       instance void NHibernate.Linq.Visitors.SelectArgumentsVisitor::VisitMultiplyExpression(class [System.Core]System.Linq.Expressions.BinaryExpression)
    IL_003f:  nop
    IL_0040:  br.s       IL_0056

    IL_0042:  ldarg.0
    IL_0043:  ldarg.1
    IL_0044:  call       instance void NHibernate.Linq.Visitors.SelectArgumentsVisitor::VisitSubtractExpression(class [System.Core]System.Linq.Expressions.BinaryExpression)
    IL_0049:  nop
    IL_004a:  br.s       IL_0056

    IL_004c:  ldarg.0
    IL_004d:  ldarg.1
    IL_004e:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.SelectArgumentsVisitor::VisitCriterionExpression(class [System.Core]System.Linq.Expressions.Expression)
    IL_0053:  stloc.0
    IL_0054:  br.s       IL_005a

    IL_0056:  ldarg.1
    IL_0057:  stloc.0
    IL_0058:  br.s       IL_005a

    IL_005a:  ldloc.0
    IL_005b:  ret
  } // end of method SelectArgumentsVisitor::VisitBinary

  .method private hidebysig instance class [System.Core]System.Linq.Expressions.Expression 
          VisitCriterionExpression(class [System.Core]System.Linq.Expressions.Expression expr) cil managed
  {
    // Code size       157 (0x9d)
    .maxstack  4
    .locals init (class [mscorlib]System.Collections.Generic.IEnumerable`1<class [NHibernate]NHibernate.Criterion.ICriterion> V_0,
             class [NHibernate]NHibernate.Criterion.Conjunction V_1,
             class [NHibernate]NHibernate.Criterion.ICriterion V_2,
             class [System.Core]System.Linq.Expressions.Expression V_3,
             bool V_4,
             class [mscorlib]System.Collections.Generic.IEnumerator`1<class [NHibernate]NHibernate.Criterion.ICriterion> V_5)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.SelectArgumentsVisitor::_rootCriteria
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.SelectArgumentsVisitor::_session
    IL_000d:  ldarg.1
    IL_000e:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::GetCriterion(class [NHibernate]NHibernate.ICriteria,
                                                                                                                                                                                                  class [NHibernate]NHibernate.ISession,
                                                                                                                                                                                                  class [System.Core]System.Linq.Expressions.Expression)
    IL_0013:  stloc.0
    IL_0014:  ldloc.0
    IL_0015:  call       int32 [System.Core]System.Linq.Enumerable::Count<class [NHibernate]NHibernate.Criterion.ICriterion>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_001a:  ldc.i4.0
    IL_001b:  cgt
    IL_001d:  ldc.i4.0
    IL_001e:  ceq
    IL_0020:  stloc.s    V_4
    IL_0022:  ldloc.s    V_4
    IL_0024:  brtrue.s   IL_0097

    IL_0026:  nop
    IL_0027:  newobj     instance void [NHibernate]NHibernate.Criterion.Conjunction::.ctor()
    IL_002c:  stloc.1
    IL_002d:  nop
    IL_002e:  ldloc.0
    IL_002f:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.Generic.IEnumerable`1<class [NHibernate]NHibernate.Criterion.ICriterion>::GetEnumerator()
    IL_0034:  stloc.s    V_5
    .try
    {
      IL_0036:  br.s       IL_004a

      IL_0038:  ldloc.s    V_5
      IL_003a:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class [NHibernate]NHibernate.Criterion.ICriterion>::get_Current()
      IL_003f:  stloc.2
      IL_0040:  nop
      IL_0041:  ldloc.1
      IL_0042:  ldloc.2
      IL_0043:  callvirt   instance class [NHibernate]NHibernate.Criterion.Junction [NHibernate]NHibernate.Criterion.Junction::Add(class [NHibernate]NHibernate.Criterion.ICriterion)
      IL_0048:  pop
      IL_0049:  nop
      IL_004a:  ldloc.s    V_5
      IL_004c:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_0051:  stloc.s    V_4
      IL_0053:  ldloc.s    V_4
      IL_0055:  brtrue.s   IL_0038

      IL_0057:  leave.s    IL_006d

    }  // end .try
    finally
    {
      IL_0059:  ldloc.s    V_5
      IL_005b:  ldnull
      IL_005c:  ceq
      IL_005e:  stloc.s    V_4
      IL_0060:  ldloc.s    V_4
      IL_0062:  brtrue.s   IL_006c

      IL_0064:  ldloc.s    V_5
      IL_0066:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_006b:  nop
      IL_006c:  endfinally
    }  // end handler
    IL_006d:  nop
    IL_006e:  ldarg.0
    IL_006f:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.SelectArgumentsVisitor::_projections
    IL_0074:  ldloc.1
    IL_0075:  ldc.i4.1
    IL_0076:  box        [mscorlib]System.Boolean
    IL_007b:  call       class [NHibernate]NHibernate.Criterion.IProjection [NHibernate]NHibernate.Criterion.Projections::Constant(object)
    IL_0080:  ldc.i4.0
    IL_0081:  box        [mscorlib]System.Boolean
    IL_0086:  call       class [NHibernate]NHibernate.Criterion.IProjection [NHibernate]NHibernate.Criterion.Projections::Constant(object)
    IL_008b:  call       class [NHibernate]NHibernate.Criterion.IProjection [NHibernate]NHibernate.Criterion.Projections::Conditional(class [NHibernate]NHibernate.Criterion.ICriterion,
                                                                                                                                      class [NHibernate]NHibernate.Criterion.IProjection,
                                                                                                                                      class [NHibernate]NHibernate.Criterion.IProjection)
    IL_0090:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::Add(!0)
    IL_0095:  nop
    IL_0096:  nop
    IL_0097:  ldarg.1
    IL_0098:  stloc.3
    IL_0099:  br.s       IL_009b

    IL_009b:  ldloc.3
    IL_009c:  ret
  } // end of method SelectArgumentsVisitor::VisitCriterionExpression

  .method private hidebysig instance void 
          VisitAddExpression(class [System.Core]System.Linq.Expressions.BinaryExpression expr) cil managed
  {
    // Code size       207 (0xcf)
    .maxstack  4
    .locals init (class NHibernate.Linq.Visitors.SelectArgumentsVisitor V_0,
             class NHibernate.Linq.Visitors.SelectArgumentsVisitor V_1,
             class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> V_2,
             class [NHibernate]NHibernate.Type.IType[] V_3,
             bool V_4,
             class [NHibernate]NHibernate.Criterion.SqlFunctionProjection V_5,
             bool V_6)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.SelectArgumentsVisitor::_rootCriteria
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.SelectArgumentsVisitor::_session
    IL_000d:  newobj     instance void NHibernate.Linq.Visitors.SelectArgumentsVisitor::.ctor(class [NHibernate]NHibernate.ICriteria,
                                                                                              class [NHibernate]NHibernate.ISession)
    IL_0012:  stloc.0
    IL_0013:  ldarg.0
    IL_0014:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.SelectArgumentsVisitor::_rootCriteria
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.SelectArgumentsVisitor::_session
    IL_001f:  newobj     instance void NHibernate.Linq.Visitors.SelectArgumentsVisitor::.ctor(class [NHibernate]NHibernate.ICriteria,
                                                                                              class [NHibernate]NHibernate.ISession)
    IL_0024:  stloc.1
    IL_0025:  ldloc.0
    IL_0026:  ldarg.1
    IL_0027:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.BinaryExpression::get_Left()
    IL_002c:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0031:  pop
    IL_0032:  ldloc.1
    IL_0033:  ldarg.1
    IL_0034:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.BinaryExpression::get_Right()
    IL_0039:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_003e:  pop
    IL_003f:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::.ctor()
    IL_0044:  stloc.2
    IL_0045:  ldloc.2
    IL_0046:  ldloc.0
    IL_0047:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.SelectArgumentsVisitor::_projections
    IL_004c:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::AddRange(class [mscorlib]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0051:  nop
    IL_0052:  ldloc.2
    IL_0053:  ldloc.1
    IL_0054:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.SelectArgumentsVisitor::_projections
    IL_0059:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::AddRange(class [mscorlib]System.Collections.Generic.IEnumerable`1<!0>)
    IL_005e:  nop
    IL_005f:  ldloc.2
    IL_0060:  ldc.i4.0
    IL_0061:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::get_Item(int32)
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.SelectArgumentsVisitor::_rootCriteria
    IL_006c:  ldarg.0
    IL_006d:  call       instance class [NHibernate]NHibernate.Criterion.ICriteriaQuery NHibernate.Linq.Visitors.SelectArgumentsVisitor::get_CriteriaQuery()
    IL_0072:  callvirt   instance class [NHibernate]NHibernate.Type.IType[] [NHibernate]NHibernate.Criterion.IProjection::GetTypes(class [NHibernate]NHibernate.ICriteria,
                                                                                                                                   class [NHibernate]NHibernate.Criterion.ICriteriaQuery)
    IL_0077:  stloc.3
    IL_0078:  ldloc.3
    IL_0079:  ldc.i4.0
    IL_007a:  ldelem.ref
    IL_007b:  isinst     [NHibernate]NHibernate.Type.AbstractStringType
    IL_0080:  ldnull
    IL_0081:  cgt.un
    IL_0083:  stloc.s    V_4
    IL_0085:  ldloc.s    V_4
    IL_0087:  ldc.i4.0
    IL_0088:  ceq
    IL_008a:  stloc.s    V_6
    IL_008c:  ldloc.s    V_6
    IL_008e:  brtrue.s   IL_00a9

    IL_0090:  nop
    IL_0091:  ldstr      "concat"
    IL_0096:  ldloc.3
    IL_0097:  ldc.i4.0
    IL_0098:  ldelem.ref
    IL_0099:  ldloc.2
    IL_009a:  callvirt   instance !0[] class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::ToArray()
    IL_009f:  newobj     instance void [NHibernate]NHibernate.Criterion.SqlFunctionProjection::.ctor(string,
                                                                                                     class [NHibernate]NHibernate.Type.IType,
                                                                                                     class [NHibernate]NHibernate.Criterion.IProjection[])
    IL_00a4:  stloc.s    V_5
    IL_00a6:  nop
    IL_00a7:  br.s       IL_00c0

    IL_00a9:  nop
    IL_00aa:  ldsfld     class [NHibernate]NHibernate.Dialect.Function.ISQLFunction NHibernate.Linq.Visitors.SelectArgumentsVisitor::arithmaticAddition
    IL_00af:  ldloc.3
    IL_00b0:  ldc.i4.0
    IL_00b1:  ldelem.ref
    IL_00b2:  ldloc.2
    IL_00b3:  callvirt   instance !0[] class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::ToArray()
    IL_00b8:  newobj     instance void [NHibernate]NHibernate.Criterion.SqlFunctionProjection::.ctor(class [NHibernate]NHibernate.Dialect.Function.ISQLFunction,
                                                                                                     class [NHibernate]NHibernate.Type.IType,
                                                                                                     class [NHibernate]NHibernate.Criterion.IProjection[])
    IL_00bd:  stloc.s    V_5
    IL_00bf:  nop
    IL_00c0:  ldarg.0
    IL_00c1:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.SelectArgumentsVisitor::_projections
    IL_00c6:  ldloc.s    V_5
    IL_00c8:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::Add(!0)
    IL_00cd:  nop
    IL_00ce:  ret
  } // end of method SelectArgumentsVisitor::VisitAddExpression

  .method private hidebysig instance void 
          VisitMultiplyExpression(class [System.Core]System.Linq.Expressions.BinaryExpression expr) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldsfld     class [NHibernate]NHibernate.Dialect.Function.ISQLFunction NHibernate.Linq.Visitors.SelectArgumentsVisitor::arithmaticMultiply
    IL_0008:  call       instance void NHibernate.Linq.Visitors.SelectArgumentsVisitor::VisitAritmaticOperation(class [System.Core]System.Linq.Expressions.BinaryExpression,
                                                                                                                class [NHibernate]NHibernate.Dialect.Function.ISQLFunction)
    IL_000d:  nop
    IL_000e:  ret
  } // end of method SelectArgumentsVisitor::VisitMultiplyExpression

  .method private hidebysig instance void 
          VisitSubtractExpression(class [System.Core]System.Linq.Expressions.BinaryExpression expr) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldsfld     class [NHibernate]NHibernate.Dialect.Function.ISQLFunction NHibernate.Linq.Visitors.SelectArgumentsVisitor::arithmaticSubstract
    IL_0008:  call       instance void NHibernate.Linq.Visitors.SelectArgumentsVisitor::VisitAritmaticOperation(class [System.Core]System.Linq.Expressions.BinaryExpression,
                                                                                                                class [NHibernate]NHibernate.Dialect.Function.ISQLFunction)
    IL_000d:  nop
    IL_000e:  ret
  } // end of method SelectArgumentsVisitor::VisitSubtractExpression

  .method private hidebysig instance void 
          VisitDivideExpression(class [System.Core]System.Linq.Expressions.BinaryExpression expr) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldsfld     class [NHibernate]NHibernate.Dialect.Function.ISQLFunction NHibernate.Linq.Visitors.SelectArgumentsVisitor::arithmaticDivide
    IL_0008:  call       instance void NHibernate.Linq.Visitors.SelectArgumentsVisitor::VisitAritmaticOperation(class [System.Core]System.Linq.Expressions.BinaryExpression,
                                                                                                                class [NHibernate]NHibernate.Dialect.Function.ISQLFunction)
    IL_000d:  nop
    IL_000e:  ret
  } // end of method SelectArgumentsVisitor::VisitDivideExpression

  .method private hidebysig instance void 
          VisitAritmaticOperation(class [System.Core]System.Linq.Expressions.BinaryExpression expr,
                                  class [NHibernate]NHibernate.Dialect.Function.ISQLFunction arithmaticOperation) cil managed
  {
    // Code size       152 (0x98)
    .maxstack  4
    .locals init (class NHibernate.Linq.Visitors.SelectArgumentsVisitor V_0,
             class NHibernate.Linq.Visitors.SelectArgumentsVisitor V_1,
             class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> V_2,
             class [NHibernate]NHibernate.Type.IType[] V_3,
             class [NHibernate]NHibernate.Criterion.SqlFunctionProjection V_4)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.SelectArgumentsVisitor::_rootCriteria
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.SelectArgumentsVisitor::_session
    IL_000d:  newobj     instance void NHibernate.Linq.Visitors.SelectArgumentsVisitor::.ctor(class [NHibernate]NHibernate.ICriteria,
                                                                                              class [NHibernate]NHibernate.ISession)
    IL_0012:  stloc.0
    IL_0013:  ldarg.0
    IL_0014:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.SelectArgumentsVisitor::_rootCriteria
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.SelectArgumentsVisitor::_session
    IL_001f:  newobj     instance void NHibernate.Linq.Visitors.SelectArgumentsVisitor::.ctor(class [NHibernate]NHibernate.ICriteria,
                                                                                              class [NHibernate]NHibernate.ISession)
    IL_0024:  stloc.1
    IL_0025:  ldloc.0
    IL_0026:  ldarg.1
    IL_0027:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.BinaryExpression::get_Left()
    IL_002c:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0031:  pop
    IL_0032:  ldloc.1
    IL_0033:  ldarg.1
    IL_0034:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.BinaryExpression::get_Right()
    IL_0039:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_003e:  pop
    IL_003f:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::.ctor()
    IL_0044:  stloc.2
    IL_0045:  ldloc.2
    IL_0046:  ldloc.0
    IL_0047:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.SelectArgumentsVisitor::_projections
    IL_004c:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::AddRange(class [mscorlib]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0051:  nop
    IL_0052:  ldloc.2
    IL_0053:  ldloc.1
    IL_0054:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.SelectArgumentsVisitor::_projections
    IL_0059:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::AddRange(class [mscorlib]System.Collections.Generic.IEnumerable`1<!0>)
    IL_005e:  nop
    IL_005f:  ldloc.2
    IL_0060:  ldc.i4.0
    IL_0061:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::get_Item(int32)
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.SelectArgumentsVisitor::_rootCriteria
    IL_006c:  ldarg.0
    IL_006d:  call       instance class [NHibernate]NHibernate.Criterion.ICriteriaQuery NHibernate.Linq.Visitors.SelectArgumentsVisitor::get_CriteriaQuery()
    IL_0072:  callvirt   instance class [NHibernate]NHibernate.Type.IType[] [NHibernate]NHibernate.Criterion.IProjection::GetTypes(class [NHibernate]NHibernate.ICriteria,
                                                                                                                                   class [NHibernate]NHibernate.Criterion.ICriteriaQuery)
    IL_0077:  stloc.3
    IL_0078:  ldarg.2
    IL_0079:  ldloc.3
    IL_007a:  ldc.i4.0
    IL_007b:  ldelem.ref
    IL_007c:  ldloc.2
    IL_007d:  callvirt   instance !0[] class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::ToArray()
    IL_0082:  newobj     instance void [NHibernate]NHibernate.Criterion.SqlFunctionProjection::.ctor(class [NHibernate]NHibernate.Dialect.Function.ISQLFunction,
                                                                                                     class [NHibernate]NHibernate.Type.IType,
                                                                                                     class [NHibernate]NHibernate.Criterion.IProjection[])
    IL_0087:  stloc.s    V_4
    IL_0089:  ldarg.0
    IL_008a:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.SelectArgumentsVisitor::_projections
    IL_008f:  ldloc.s    V_4
    IL_0091:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::Add(!0)
    IL_0096:  nop
    IL_0097:  ret
  } // end of method SelectArgumentsVisitor::VisitAritmaticOperation

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitUnary(class [System.Core]System.Linq.Expressions.UnaryExpression expr) cil managed
  {
    // Code size       164 (0xa4)
    .maxstack  3
    .locals init (class NHibernate.Linq.Visitors.SelectArgumentsVisitor V_0,
             class [NHibernate]NHibernate.Criterion.ProjectionList V_1,
             class [NHibernate]NHibernate.Criterion.IProjection V_2,
             class [NHibernate]NHibernate.Criterion.CastProjection V_3,
             class [System.Core]System.Linq.Expressions.Expression V_4,
             bool V_5,
             valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [NHibernate]NHibernate.Criterion.IProjection> V_6)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.ExpressionType [System.Core]System.Linq.Expressions.Expression::get_NodeType()
    IL_0007:  ldc.i4.s   10
    IL_0009:  ceq
    IL_000b:  ldc.i4.0
    IL_000c:  ceq
    IL_000e:  stloc.s    V_5
    IL_0010:  ldloc.s    V_5
    IL_0012:  brtrue     IL_009c

    IL_0017:  nop
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.SelectArgumentsVisitor::_rootCriteria
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.SelectArgumentsVisitor::_session
    IL_0024:  newobj     instance void NHibernate.Linq.Visitors.SelectArgumentsVisitor::.ctor(class [NHibernate]NHibernate.ICriteria,
                                                                                              class [NHibernate]NHibernate.ISession)
    IL_0029:  stloc.0
    IL_002a:  ldloc.0
    IL_002b:  ldarg.1
    IL_002c:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.UnaryExpression::get_Operand()
    IL_0031:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0036:  pop
    IL_0037:  call       class [NHibernate]NHibernate.Criterion.ProjectionList [NHibernate]NHibernate.Criterion.Projections::ProjectionList()
    IL_003c:  stloc.1
    IL_003d:  nop
    IL_003e:  ldloc.0
    IL_003f:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.SelectArgumentsVisitor::_projections
    IL_0044:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::GetEnumerator()
    IL_0049:  stloc.s    V_6
    .try
    {
      IL_004b:  br.s       IL_005d

      IL_004d:  ldloca.s   V_6
      IL_004f:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [NHibernate]NHibernate.Criterion.IProjection>::get_Current()
      IL_0054:  stloc.2
      IL_0055:  ldloc.1
      IL_0056:  ldloc.2
      IL_0057:  callvirt   instance class [NHibernate]NHibernate.Criterion.ProjectionList [NHibernate]NHibernate.Criterion.ProjectionList::Add(class [NHibernate]NHibernate.Criterion.IProjection)
      IL_005c:  pop
      IL_005d:  ldloca.s   V_6
      IL_005f:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [NHibernate]NHibernate.Criterion.IProjection>::MoveNext()
      IL_0064:  stloc.s    V_5
      IL_0066:  ldloc.s    V_5
      IL_0068:  brtrue.s   IL_004d

      IL_006a:  leave.s    IL_007b

    }  // end .try
    finally
    {
      IL_006c:  ldloca.s   V_6
      IL_006e:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [NHibernate]NHibernate.Criterion.IProjection>
      IL_0074:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0079:  nop
      IL_007a:  endfinally
    }  // end handler
    IL_007b:  nop
    IL_007c:  ldarg.1
    IL_007d:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_0082:  call       class [NHibernate]NHibernate.Type.IType [NHibernate]NHibernate.NHibernateUtil::GuessType(class [mscorlib]System.Type)
    IL_0087:  ldloc.1
    IL_0088:  newobj     instance void [NHibernate]NHibernate.Criterion.CastProjection::.ctor(class [NHibernate]NHibernate.Type.IType,
                                                                                              class [NHibernate]NHibernate.Criterion.IProjection)
    IL_008d:  stloc.3
    IL_008e:  ldarg.0
    IL_008f:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.SelectArgumentsVisitor::_projections
    IL_0094:  ldloc.3
    IL_0095:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::Add(!0)
    IL_009a:  nop
    IL_009b:  nop
    IL_009c:  ldarg.1
    IL_009d:  stloc.s    V_4
    IL_009f:  br.s       IL_00a1

    IL_00a1:  ldloc.s    V_4
    IL_00a3:  ret
  } // end of method SelectArgumentsVisitor::VisitUnary

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitEntity(class NHibernate.Linq.Expressions.EntityExpression expr) cil managed
  {
    // Code size       50 (0x32)
    .maxstack  3
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.SelectArgumentsVisitor::_rootCriteria
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance string NHibernate.Linq.Expressions.EntityExpression::get_Alias()
    IL_000d:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::GetCriteriaByAlias(string)
    IL_0012:  ldnull
    IL_0013:  ceq
    IL_0015:  stloc.1
    IL_0016:  ldloc.1
    IL_0017:  brtrue.s   IL_002c

    IL_0019:  nop
    IL_001a:  ldarg.0
    IL_001b:  ldarg.1
    IL_001c:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_0021:  newobj     instance void NHibernate.Linq.Transform.LinqJoinResultsTransformer::.ctor(class [mscorlib]System.Type)
    IL_0026:  stfld      class [NHibernate]NHibernate.Transform.IResultTransformer NHibernate.Linq.Visitors.SelectArgumentsVisitor::_transformer
    IL_002b:  nop
    IL_002c:  ldarg.1
    IL_002d:  stloc.0
    IL_002e:  br.s       IL_0030

    IL_0030:  ldloc.0
    IL_0031:  ret
  } // end of method SelectArgumentsVisitor::VisitEntity

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitMemberAccess(class [System.Core]System.Linq.Expressions.MemberExpression expr) cil managed
  {
    // Code size       69 (0x45)
    .maxstack  3
    .locals init (class [NHibernate]NHibernate.Criterion.IProjection V_0,
             class [System.Core]System.Linq.Expressions.Expression V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.SelectArgumentsVisitor::_rootCriteria
    IL_0007:  call       class [NHibernate]NHibernate.Criterion.IProjection NHibernate.Linq.Util.CriteriaUtil::GetProjection(class [NHibernate]NHibernate.ICriteria)
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  brfalse.s  IL_001b

    IL_0010:  ldloc.0
    IL_0011:  callvirt   instance bool [NHibernate]NHibernate.Criterion.IProjection::get_IsGrouped()
    IL_0016:  ldc.i4.0
    IL_0017:  ceq
    IL_0019:  br.s       IL_001c

    IL_001b:  ldc.i4.1
    IL_001c:  stloc.2
    IL_001d:  ldloc.2
    IL_001e:  brtrue.s   IL_003f

    IL_0020:  nop
    IL_0021:  ldarg.0
    IL_0022:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.SelectArgumentsVisitor::_projections
    IL_0027:  ldloc.0
    IL_0028:  ldarg.1
    IL_0029:  callvirt   instance class [mscorlib]System.Reflection.MemberInfo [System.Core]System.Linq.Expressions.MemberExpression::get_Member()
    IL_002e:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_0033:  call       class [NHibernate]NHibernate.Criterion.IProjection [NHibernate]NHibernate.Criterion.Projections::Alias(class [NHibernate]NHibernate.Criterion.IProjection,
                                                                                                                                string)
    IL_0038:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::Add(!0)
    IL_003d:  nop
    IL_003e:  nop
    IL_003f:  ldarg.1
    IL_0040:  stloc.1
    IL_0041:  br.s       IL_0043

    IL_0043:  ldloc.1
    IL_0044:  ret
  } // end of method SelectArgumentsVisitor::VisitMemberAccess

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitPropertyAccess(class NHibernate.Linq.Expressions.PropertyAccessExpression expr) cil managed
  {
    // Code size       38 (0x26)
    .maxstack  2
    .locals init (string V_0,
             class [System.Core]System.Linq.Expressions.Expression V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.SelectArgumentsVisitor::_rootCriteria
    IL_0007:  ldarg.1
    IL_0008:  call       string NHibernate.Linq.Visitors.MemberNameVisitor::GetMemberName(class [NHibernate]NHibernate.ICriteria,
                                                                                          class [System.Core]System.Linq.Expressions.Expression)
    IL_000d:  stloc.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection> NHibernate.Linq.Visitors.SelectArgumentsVisitor::_projections
    IL_0014:  ldloc.0
    IL_0015:  call       class [NHibernate]NHibernate.Criterion.PropertyProjection [NHibernate]NHibernate.Criterion.Projections::Property(string)
    IL_001a:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.IProjection>::Add(!0)
    IL_001f:  nop
    IL_0020:  ldarg.1
    IL_0021:  stloc.1
    IL_0022:  br.s       IL_0024

    IL_0024:  ldloc.1
    IL_0025:  ret
  } // end of method SelectArgumentsVisitor::VisitPropertyAccess

  .method private hidebysig static bool  '<VisitNew>b__0'(class [System.Core]System.Linq.Expressions.Expression arg) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       37 (0x25)
    .maxstack  1
    .locals init (bool V_0)
    IL_0000:  ldarg.0
    IL_0001:  isinst     [System.Core]System.Linq.Expressions.MethodCallExpression
    IL_0006:  brfalse.s  IL_001f

    IL_0008:  ldarg.0
    IL_0009:  castclass  [System.Core]System.Linq.Expressions.MethodCallExpression
    IL_000e:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [System.Core]System.Linq.Expressions.MethodCallExpression::get_Method()
    IL_0013:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_0018:  call       bool NHibernate.Linq.Visitors.SelectArgumentsVisitor::SupportsMethod(string)
    IL_001d:  br.s       IL_0020

    IL_001f:  ldc.i4.0
    IL_0020:  stloc.0
    IL_0021:  br.s       IL_0023

    IL_0023:  ldloc.0
    IL_0024:  ret
  } // end of method SelectArgumentsVisitor::'<VisitNew>b__0'

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       101 (0x65)
    .maxstack  4
    IL_0000:  ldstr      "("
    IL_0005:  ldstr      "+"
    IL_000a:  ldstr      ")"
    IL_000f:  newobj     instance void [NHibernate]NHibernate.Dialect.Function.VarArgsSQLFunction::.ctor(string,
                                                                                                         string,
                                                                                                         string)
    IL_0014:  stsfld     class [NHibernate]NHibernate.Dialect.Function.ISQLFunction NHibernate.Linq.Visitors.SelectArgumentsVisitor::arithmaticAddition
    IL_0019:  ldstr      "("
    IL_001e:  ldstr      "/"
    IL_0023:  ldstr      ")"
    IL_0028:  newobj     instance void [NHibernate]NHibernate.Dialect.Function.VarArgsSQLFunction::.ctor(string,
                                                                                                         string,
                                                                                                         string)
    IL_002d:  stsfld     class [NHibernate]NHibernate.Dialect.Function.ISQLFunction NHibernate.Linq.Visitors.SelectArgumentsVisitor::arithmaticDivide
    IL_0032:  ldstr      "("
    IL_0037:  ldstr      "*"
    IL_003c:  ldstr      ")"
    IL_0041:  newobj     instance void [NHibernate]NHibernate.Dialect.Function.VarArgsSQLFunction::.ctor(string,
                                                                                                         string,
                                                                                                         string)
    IL_0046:  stsfld     class [NHibernate]NHibernate.Dialect.Function.ISQLFunction NHibernate.Linq.Visitors.SelectArgumentsVisitor::arithmaticMultiply
    IL_004b:  ldstr      "("
    IL_0050:  ldstr      "-"
    IL_0055:  ldstr      ")"
    IL_005a:  newobj     instance void [NHibernate]NHibernate.Dialect.Function.VarArgsSQLFunction::.ctor(string,
                                                                                                         string,
                                                                                                         string)
    IL_005f:  stsfld     class [NHibernate]NHibernate.Dialect.Function.ISQLFunction NHibernate.Linq.Visitors.SelectArgumentsVisitor::arithmaticSubstract
    IL_0064:  ret
  } // end of method SelectArgumentsVisitor::.cctor

  .property instance class [NHibernate]NHibernate.Criterion.IProjection
          Projection()
  {
    .get instance class [NHibernate]NHibernate.Criterion.IProjection NHibernate.Linq.Visitors.SelectArgumentsVisitor::get_Projection()
  } // end of property SelectArgumentsVisitor::Projection
  .property instance class [NHibernate]NHibernate.Transform.IResultTransformer
          Transformer()
  {
    .get instance class [NHibernate]NHibernate.Transform.IResultTransformer NHibernate.Linq.Visitors.SelectArgumentsVisitor::get_Transformer()
  } // end of property SelectArgumentsVisitor::Transformer
  .property instance class [NHibernate]NHibernate.Criterion.ICriteriaQuery
          CriteriaQuery()
  {
    .get instance class [NHibernate]NHibernate.Criterion.ICriteriaQuery NHibernate.Linq.Visitors.SelectArgumentsVisitor::get_CriteriaQuery()
  } // end of property SelectArgumentsVisitor::CriteriaQuery
} // end of class NHibernate.Linq.Visitors.SelectArgumentsVisitor

.class public auto ansi beforefieldinit NHibernate.Linq.Visitors.SelectManyVisitor
       extends NHibernate.Linq.Visitors.NHibernateExpressionVisitor
{
  .field private initonly class [NHibernate]NHibernate.ICriteria _rootCriteria
  .field private initonly string _alias
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [NHibernate]NHibernate.ICriteria criteria,
                               string alias) cil managed
  {
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void NHibernate.Linq.Visitors.NHibernateExpressionVisitor::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.SelectManyVisitor::_rootCriteria
    IL_000f:  ldarg.0
    IL_0010:  ldarg.2
    IL_0011:  stfld      string NHibernate.Linq.Visitors.SelectManyVisitor::_alias
    IL_0016:  nop
    IL_0017:  ret
  } // end of method SelectManyVisitor::.ctor

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitCollectionAccess(class NHibernate.Linq.Expressions.CollectionAccessExpression expr) cil managed
  {
    // Code size       58 (0x3a)
    .maxstack  4
    .locals init (class NHibernate.Linq.Visitors.MemberNameVisitor V_0,
             class [System.Core]System.Linq.Expressions.Expression V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.SelectManyVisitor::_rootCriteria
    IL_0007:  ldc.i4.0
    IL_0008:  newobj     instance void NHibernate.Linq.Visitors.MemberNameVisitor::.ctor(class [NHibernate]NHibernate.ICriteria,
                                                                                         bool)
    IL_000d:  stloc.0
    IL_000e:  ldloc.0
    IL_000f:  ldarg.1
    IL_0010:  callvirt   instance class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Expressions.PropertyAccessExpression::get_Expression()
    IL_0015:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_001a:  pop
    IL_001b:  ldloc.0
    IL_001c:  callvirt   instance class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.MemberNameVisitor::get_CurrentCriteria()
    IL_0021:  ldarg.1
    IL_0022:  callvirt   instance string NHibernate.Linq.Expressions.PropertyAccessExpression::get_Name()
    IL_0027:  ldarg.0
    IL_0028:  ldfld      string NHibernate.Linq.Visitors.SelectManyVisitor::_alias
    IL_002d:  ldc.i4.1
    IL_002e:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::CreateCriteria(string,
                                                                                                                          string,
                                                                                                                          valuetype [NHibernate]NHibernate.SqlCommand.JoinType)
    IL_0033:  pop
    IL_0034:  ldarg.1
    IL_0035:  stloc.1
    IL_0036:  br.s       IL_0038

    IL_0038:  ldloc.1
    IL_0039:  ret
  } // end of method SelectManyVisitor::VisitCollectionAccess

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitMethodCall(class [System.Core]System.Linq.Expressions.MethodCallExpression expr) cil managed
  {
    // Code size       26 (0x1a)
    .maxstack  3
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0008:  ldc.i4.0
    IL_0009:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_000e:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0013:  pop
    IL_0014:  ldarg.1
    IL_0015:  stloc.0
    IL_0016:  br.s       IL_0018

    IL_0018:  ldloc.0
    IL_0019:  ret
  } // end of method SelectManyVisitor::VisitMethodCall

} // end of class NHibernate.Linq.Visitors.SelectManyVisitor

.class public auto ansi beforefieldinit NHibernate.Linq.Visitors.WhereArgumentsVisitor
       extends NHibernate.Linq.Visitors.NHibernateExpressionVisitor
{
  .field private initonly class [System]System.Collections.Generic.Stack`1<class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion>> criterionStack
  .field private initonly class [NHibernate]NHibernate.ICriteria rootCriteria
  .field private initonly class [NHibernate]NHibernate.ISession session
  .field private static class NHibernate.Linq.Visitors.ComparePropToValue 'CS$<>9__CachedAnonymousMethodDelegate2'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static class NHibernate.Linq.Visitors.ComparePropToValue 'CS$<>9__CachedAnonymousMethodDelegate3'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [NHibernate]NHibernate.ICriteria rootCriteria,
                               class [NHibernate]NHibernate.ISession session) cil managed
  {
    // Code size       52 (0x34)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System]System.Collections.Generic.Stack`1<class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion>>::.ctor()
    IL_0006:  stfld      class [System]System.Collections.Generic.Stack`1<class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion>> NHibernate.Linq.Visitors.WhereArgumentsVisitor::criterionStack
    IL_000b:  ldarg.0
    IL_000c:  call       instance void NHibernate.Linq.Visitors.NHibernateExpressionVisitor::.ctor()
    IL_0011:  nop
    IL_0012:  nop
    IL_0013:  ldarg.0
    IL_0014:  ldfld      class [System]System.Collections.Generic.Stack`1<class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion>> NHibernate.Linq.Visitors.WhereArgumentsVisitor::criterionStack
    IL_0019:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.ICriterion>::.ctor()
    IL_001e:  callvirt   instance void class [System]System.Collections.Generic.Stack`1<class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion>>::Push(!0)
    IL_0023:  nop
    IL_0024:  ldarg.0
    IL_0025:  ldarg.1
    IL_0026:  stfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.WhereArgumentsVisitor::rootCriteria
    IL_002b:  ldarg.0
    IL_002c:  ldarg.2
    IL_002d:  stfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.WhereArgumentsVisitor::session
    IL_0032:  nop
    IL_0033:  ret
  } // end of method WhereArgumentsVisitor::.ctor

  .method public hidebysig static class [mscorlib]System.Collections.Generic.IEnumerable`1<class [NHibernate]NHibernate.Criterion.ICriterion> 
          GetCriterion(class [NHibernate]NHibernate.ICriteria rootCriteria,
                       class [NHibernate]NHibernate.ISession session,
                       class [System.Core]System.Linq.Expressions.Expression expression) cil managed
  {
    // Code size       28 (0x1c)
    .maxstack  3
    .locals init (class NHibernate.Linq.Visitors.WhereArgumentsVisitor V_0,
             class [mscorlib]System.Collections.Generic.IEnumerable`1<class [NHibernate]NHibernate.Criterion.ICriterion> V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  newobj     instance void NHibernate.Linq.Visitors.WhereArgumentsVisitor::.ctor(class [NHibernate]NHibernate.ICriteria,
                                                                                             class [NHibernate]NHibernate.ISession)
    IL_0008:  stloc.0
    IL_0009:  ldloc.0
    IL_000a:  ldarg.2
    IL_000b:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0010:  pop
    IL_0011:  ldloc.0
    IL_0012:  callvirt   instance class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::get_CurrentCriterions()
    IL_0017:  stloc.1
    IL_0018:  br.s       IL_001a

    IL_001a:  ldloc.1
    IL_001b:  ret
  } // end of method WhereArgumentsVisitor::GetCriterion

  .method public hidebysig specialname instance class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion> 
          get_CurrentCriterions() cil managed
  {
    // Code size       17 (0x11)
    .maxstack  1
    .locals init (class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion> V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [System]System.Collections.Generic.Stack`1<class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion>> NHibernate.Linq.Visitors.WhereArgumentsVisitor::criterionStack
    IL_0007:  callvirt   instance !0 class [System]System.Collections.Generic.Stack`1<class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion>>::Peek()
    IL_000c:  stloc.0
    IL_000d:  br.s       IL_000f

    IL_000f:  ldloc.0
    IL_0010:  ret
  } // end of method WhereArgumentsVisitor::get_CurrentCriterions

  .method public hidebysig static bool  SupportsMethod(string methodName) cil managed
  {
    // Code size       72 (0x48)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  nop
    IL_0001:  ldstr      "Any"
    IL_0006:  ldarg.0
    IL_0007:  callvirt   instance bool [mscorlib]System.String::Equals(string)
    IL_000c:  brtrue.s   IL_0042

    IL_000e:  ldstr      "StartsWith"
    IL_0013:  ldarg.0
    IL_0014:  callvirt   instance bool [mscorlib]System.String::Equals(string)
    IL_0019:  brtrue.s   IL_0042

    IL_001b:  ldstr      "EndsWith"
    IL_0020:  ldarg.0
    IL_0021:  callvirt   instance bool [mscorlib]System.String::Equals(string)
    IL_0026:  brtrue.s   IL_0042

    IL_0028:  ldstr      "Contains"
    IL_002d:  ldarg.0
    IL_002e:  callvirt   instance bool [mscorlib]System.String::Equals(string)
    IL_0033:  brtrue.s   IL_0042

    IL_0035:  ldstr      "Equals"
    IL_003a:  ldarg.0
    IL_003b:  callvirt   instance bool [mscorlib]System.String::Equals(string)
    IL_0040:  br.s       IL_0043

    IL_0042:  ldc.i4.1
    IL_0043:  stloc.0
    IL_0044:  br.s       IL_0046

    IL_0046:  ldloc.0
    IL_0047:  ret
  } // end of method WhereArgumentsVisitor::SupportsMethod

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitConstant(class [System.Core]System.Linq.Expressions.ConstantExpression expr) cil managed
  {
    // Code size       171 (0xab)
    .maxstack  2
    .locals init (bool V_0,
             class [NHibernate]NHibernate.Criterion.AbstractCriterion V_1,
             class [NHibernate]NHibernate.Criterion.AbstractCriterion V_2,
             class [System.Core]System.Linq.Expressions.Expression V_3,
             bool V_4)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_0007:  ldtoken    [mscorlib]System.Boolean
    IL_000c:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0011:  ceq
    IL_0013:  ldc.i4.0
    IL_0014:  ceq
    IL_0016:  stloc.s    V_4
    IL_0018:  ldloc.s    V_4
    IL_001a:  brtrue.s   IL_006d

    IL_001c:  nop
    IL_001d:  ldarg.1
    IL_001e:  callvirt   instance object [System.Core]System.Linq.Expressions.ConstantExpression::get_Value()
    IL_0023:  unbox.any  [mscorlib]System.Boolean
    IL_0028:  stloc.0
    IL_0029:  ldstr      "1=0"
    IL_002e:  call       class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Expression::Sql(string)
    IL_0033:  stloc.1
    IL_0034:  ldstr      "1=1"
    IL_0039:  call       class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Expression::Sql(string)
    IL_003e:  stloc.2
    IL_003f:  ldloc.0
    IL_0040:  ldc.i4.0
    IL_0041:  ceq
    IL_0043:  stloc.s    V_4
    IL_0045:  ldloc.s    V_4
    IL_0047:  brtrue.s   IL_005a

    IL_0049:  nop
    IL_004a:  ldarg.0
    IL_004b:  call       instance class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::get_CurrentCriterions()
    IL_0050:  ldloc.2
    IL_0051:  callvirt   instance void class [mscorlib]System.Collections.Generic.ICollection`1<class [NHibernate]NHibernate.Criterion.ICriterion>::Add(!0)
    IL_0056:  nop
    IL_0057:  nop
    IL_0058:  br.s       IL_0069

    IL_005a:  nop
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::get_CurrentCriterions()
    IL_0061:  ldloc.1
    IL_0062:  callvirt   instance void class [mscorlib]System.Collections.Generic.ICollection`1<class [NHibernate]NHibernate.Criterion.ICriterion>::Add(!0)
    IL_0067:  nop
    IL_0068:  nop
    IL_0069:  ldarg.1
    IL_006a:  stloc.3
    IL_006b:  br.s       IL_00a9

    IL_006d:  ldarg.1
    IL_006e:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_0073:  ldtoken    [System.Core]System.Linq.Expressions.Expression
    IL_0078:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_007d:  callvirt   instance bool [mscorlib]System.Type::IsSubclassOf(class [mscorlib]System.Type)
    IL_0082:  ldc.i4.0
    IL_0083:  ceq
    IL_0085:  stloc.s    V_4
    IL_0087:  ldloc.s    V_4
    IL_0089:  brtrue.s   IL_009f

    IL_008b:  ldarg.0
    IL_008c:  ldarg.1
    IL_008d:  callvirt   instance object [System.Core]System.Linq.Expressions.ConstantExpression::get_Value()
    IL_0092:  isinst     [System.Core]System.Linq.Expressions.Expression
    IL_0097:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_009c:  stloc.3
    IL_009d:  br.s       IL_00a9

    IL_009f:  ldarg.0
    IL_00a0:  ldarg.1
    IL_00a1:  call       instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::VisitConstant(class [System.Core]System.Linq.Expressions.ConstantExpression)
    IL_00a6:  stloc.3
    IL_00a7:  br.s       IL_00a9

    IL_00a9:  ldloc.3
    IL_00aa:  ret
  } // end of method WhereArgumentsVisitor::VisitConstant

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitMethodCall(class [System.Core]System.Linq.Expressions.MethodCallExpression expr) cil managed
  {
    // Code size       588 (0x24c)
    .maxstack  5
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             string V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [System.Core]System.Linq.Expressions.MethodCallExpression::get_Method()
    IL_0007:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_000c:  stloc.1
    IL_000d:  ldloc.1
    IL_000e:  brfalse    IL_0246

    IL_0013:  ldloc.1
    IL_0014:  ldstr      "Any"
    IL_0019:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_001e:  brtrue.s   IL_005c

    IL_0020:  ldloc.1
    IL_0021:  ldstr      "StartsWith"
    IL_0026:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_002b:  brtrue.s   IL_0074

    IL_002d:  ldloc.1
    IL_002e:  ldstr      "EndsWith"
    IL_0033:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_0038:  brtrue.s   IL_0091

    IL_003a:  ldloc.1
    IL_003b:  ldstr      "Contains"
    IL_0040:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_0045:  brtrue.s   IL_00ae

    IL_0047:  ldloc.1
    IL_0048:  ldstr      "Equals"
    IL_004d:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_0052:  brtrue     IL_0226

    IL_0057:  br         IL_0246

    IL_005c:  ldarg.0
    IL_005d:  call       instance class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::get_CurrentCriterions()
    IL_0062:  ldarg.0
    IL_0063:  ldarg.1
    IL_0064:  call       instance class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Visitors.WhereArgumentsVisitor::GetExistsCriteria(class [System.Core]System.Linq.Expressions.MethodCallExpression)
    IL_0069:  callvirt   instance void class [mscorlib]System.Collections.Generic.ICollection`1<class [NHibernate]NHibernate.Criterion.ICriterion>::Add(!0)
    IL_006e:  nop
    IL_006f:  br         IL_0246

    IL_0074:  ldarg.0
    IL_0075:  call       instance class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::get_CurrentCriterions()
    IL_007a:  ldarg.0
    IL_007b:  ldarg.1
    IL_007c:  ldsfld     class [NHibernate]NHibernate.Criterion.MatchMode [NHibernate]NHibernate.Criterion.MatchMode::Start
    IL_0081:  call       instance class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Visitors.WhereArgumentsVisitor::GetLikeCriteria(class [System.Core]System.Linq.Expressions.MethodCallExpression,
                                                                                                                                                    class [NHibernate]NHibernate.Criterion.MatchMode)
    IL_0086:  callvirt   instance void class [mscorlib]System.Collections.Generic.ICollection`1<class [NHibernate]NHibernate.Criterion.ICriterion>::Add(!0)
    IL_008b:  nop
    IL_008c:  br         IL_0246

    IL_0091:  ldarg.0
    IL_0092:  call       instance class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::get_CurrentCriterions()
    IL_0097:  ldarg.0
    IL_0098:  ldarg.1
    IL_0099:  ldsfld     class [NHibernate]NHibernate.Criterion.MatchMode [NHibernate]NHibernate.Criterion.MatchMode::End
    IL_009e:  call       instance class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Visitors.WhereArgumentsVisitor::GetLikeCriteria(class [System.Core]System.Linq.Expressions.MethodCallExpression,
                                                                                                                                                    class [NHibernate]NHibernate.Criterion.MatchMode)
    IL_00a3:  callvirt   instance void class [mscorlib]System.Collections.Generic.ICollection`1<class [NHibernate]NHibernate.Criterion.ICriterion>::Add(!0)
    IL_00a8:  nop
    IL_00a9:  br         IL_0246

    IL_00ae:  ldarg.1
    IL_00af:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.MethodCallExpression::get_Object()
    IL_00b4:  ldnull
    IL_00b5:  ceq
    IL_00b7:  ldc.i4.0
    IL_00b8:  ceq
    IL_00ba:  stloc.2
    IL_00bb:  ldloc.2
    IL_00bc:  brtrue     IL_018b

    IL_00c1:  nop
    IL_00c2:  ldarg.1
    IL_00c3:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_00c8:  ldc.i4.0
    IL_00c9:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_00ce:  isinst     [System.Core]System.Linq.Expressions.ConstantExpression
    IL_00d3:  ldnull
    IL_00d4:  cgt.un
    IL_00d6:  ldc.i4.0
    IL_00d7:  ceq
    IL_00d9:  stloc.2
    IL_00da:  ldloc.2
    IL_00db:  brtrue.s   IL_010b

    IL_00dd:  nop
    IL_00de:  ldarg.0
    IL_00df:  call       instance class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::get_CurrentCriterions()
    IL_00e4:  ldarg.0
    IL_00e5:  ldarg.1
    IL_00e6:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_00eb:  ldc.i4.0
    IL_00ec:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_00f1:  ldarg.1
    IL_00f2:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_00f7:  ldc.i4.1
    IL_00f8:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_00fd:  call       instance class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Visitors.WhereArgumentsVisitor::GetCollectionContainsCriteria(class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                                                  class [System.Core]System.Linq.Expressions.Expression)
    IL_0102:  callvirt   instance void class [mscorlib]System.Collections.Generic.ICollection`1<class [NHibernate]NHibernate.Criterion.ICriterion>::Add(!0)
    IL_0107:  nop
    IL_0108:  nop
    IL_0109:  br.s       IL_0185

    IL_010b:  ldarg.1
    IL_010c:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0111:  ldc.i4.0
    IL_0112:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_0117:  isinst     NHibernate.Linq.Expressions.CollectionAccessExpression
    IL_011c:  ldnull
    IL_011d:  cgt.un
    IL_011f:  ldc.i4.0
    IL_0120:  ceq
    IL_0122:  stloc.2
    IL_0123:  ldloc.2
    IL_0124:  brtrue.s   IL_0159

    IL_0126:  nop
    IL_0127:  ldarg.0
    IL_0128:  call       instance class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::get_CurrentCriterions()
    IL_012d:  ldarg.0
    IL_012e:  ldarg.1
    IL_012f:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0134:  ldc.i4.0
    IL_0135:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_013a:  castclass  NHibernate.Linq.Expressions.CollectionAccessExpression
    IL_013f:  ldarg.1
    IL_0140:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0145:  ldc.i4.1
    IL_0146:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_014b:  call       instance class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Visitors.WhereArgumentsVisitor::GetCollectionContainsCriteria(class NHibernate.Linq.Expressions.CollectionAccessExpression,
                                                                                                                                                                  class [System.Core]System.Linq.Expressions.Expression)
    IL_0150:  callvirt   instance void class [mscorlib]System.Collections.Generic.ICollection`1<class [NHibernate]NHibernate.Criterion.ICriterion>::Add(!0)
    IL_0155:  nop
    IL_0156:  nop
    IL_0157:  br.s       IL_0185

    IL_0159:  nop
    IL_015a:  ldarg.0
    IL_015b:  call       instance class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::get_CurrentCriterions()
    IL_0160:  ldarg.0
    IL_0161:  ldarg.1
    IL_0162:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0167:  ldc.i4.0
    IL_0168:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_016d:  ldarg.1
    IL_016e:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0173:  ldc.i4.1
    IL_0174:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_0179:  call       instance class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Visitors.WhereArgumentsVisitor::GetCollectionContainsCriteria(class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                                                  class [System.Core]System.Linq.Expressions.Expression)
    IL_017e:  callvirt   instance void class [mscorlib]System.Collections.Generic.ICollection`1<class [NHibernate]NHibernate.Criterion.ICriterion>::Add(!0)
    IL_0183:  nop
    IL_0184:  nop
    IL_0185:  nop
    IL_0186:  br         IL_0224

    IL_018b:  ldarg.1
    IL_018c:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.MethodCallExpression::get_Object()
    IL_0191:  isinst     [System.Core]System.Linq.Expressions.ConstantExpression
    IL_0196:  ldnull
    IL_0197:  cgt.un
    IL_0199:  ldc.i4.0
    IL_019a:  ceq
    IL_019c:  stloc.2
    IL_019d:  ldloc.2
    IL_019e:  brtrue.s   IL_01c8

    IL_01a0:  nop
    IL_01a1:  ldarg.0
    IL_01a2:  call       instance class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::get_CurrentCriterions()
    IL_01a7:  ldarg.0
    IL_01a8:  ldarg.1
    IL_01a9:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.MethodCallExpression::get_Object()
    IL_01ae:  ldarg.1
    IL_01af:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_01b4:  ldc.i4.0
    IL_01b5:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_01ba:  call       instance class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Visitors.WhereArgumentsVisitor::GetCollectionContainsCriteria(class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                                                  class [System.Core]System.Linq.Expressions.Expression)
    IL_01bf:  callvirt   instance void class [mscorlib]System.Collections.Generic.ICollection`1<class [NHibernate]NHibernate.Criterion.ICriterion>::Add(!0)
    IL_01c4:  nop
    IL_01c5:  nop
    IL_01c6:  br.s       IL_0224

    IL_01c8:  ldarg.1
    IL_01c9:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.MethodCallExpression::get_Object()
    IL_01ce:  isinst     NHibernate.Linq.Expressions.CollectionAccessExpression
    IL_01d3:  ldnull
    IL_01d4:  cgt.un
    IL_01d6:  ldc.i4.0
    IL_01d7:  ceq
    IL_01d9:  stloc.2
    IL_01da:  ldloc.2
    IL_01db:  brtrue.s   IL_020a

    IL_01dd:  nop
    IL_01de:  ldarg.0
    IL_01df:  call       instance class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::get_CurrentCriterions()
    IL_01e4:  ldarg.0
    IL_01e5:  ldarg.1
    IL_01e6:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.MethodCallExpression::get_Object()
    IL_01eb:  castclass  NHibernate.Linq.Expressions.CollectionAccessExpression
    IL_01f0:  ldarg.1
    IL_01f1:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_01f6:  ldc.i4.0
    IL_01f7:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_01fc:  call       instance class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Visitors.WhereArgumentsVisitor::GetCollectionContainsCriteria(class NHibernate.Linq.Expressions.CollectionAccessExpression,
                                                                                                                                                                  class [System.Core]System.Linq.Expressions.Expression)
    IL_0201:  callvirt   instance void class [mscorlib]System.Collections.Generic.ICollection`1<class [NHibernate]NHibernate.Criterion.ICriterion>::Add(!0)
    IL_0206:  nop
    IL_0207:  nop
    IL_0208:  br.s       IL_0224

    IL_020a:  nop
    IL_020b:  ldarg.0
    IL_020c:  call       instance class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::get_CurrentCriterions()
    IL_0211:  ldarg.0
    IL_0212:  ldarg.1
    IL_0213:  ldsfld     class [NHibernate]NHibernate.Criterion.MatchMode [NHibernate]NHibernate.Criterion.MatchMode::Anywhere
    IL_0218:  call       instance class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Visitors.WhereArgumentsVisitor::GetLikeCriteria(class [System.Core]System.Linq.Expressions.MethodCallExpression,
                                                                                                                                                    class [NHibernate]NHibernate.Criterion.MatchMode)
    IL_021d:  callvirt   instance void class [mscorlib]System.Collections.Generic.ICollection`1<class [NHibernate]NHibernate.Criterion.ICriterion>::Add(!0)
    IL_0222:  nop
    IL_0223:  nop
    IL_0224:  br.s       IL_0246

    IL_0226:  ldarg.0
    IL_0227:  ldarg.1
    IL_0228:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.MethodCallExpression::get_Object()
    IL_022d:  ldarg.1
    IL_022e:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0233:  ldc.i4.0
    IL_0234:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_0239:  call       class [System.Core]System.Linq.Expressions.BinaryExpression [System.Core]System.Linq.Expressions.Expression::Equal(class [System.Core]System.Linq.Expressions.Expression,
                                                                                                                                            class [System.Core]System.Linq.Expressions.Expression)
    IL_023e:  call       instance void NHibernate.Linq.Visitors.WhereArgumentsVisitor::VisitBinaryCriterionExpression(class [System.Core]System.Linq.Expressions.BinaryExpression)
    IL_0243:  nop
    IL_0244:  br.s       IL_0246

    IL_0246:  ldarg.1
    IL_0247:  stloc.0
    IL_0248:  br.s       IL_024a

    IL_024a:  ldloc.0
    IL_024b:  ret
  } // end of method WhereArgumentsVisitor::VisitMethodCall

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitTypeIs(class [System.Core]System.Linq.Expressions.TypeBinaryExpression expr) cil managed
  {
    // Code size       260 (0x104)
    .maxstack  4
    .locals init (class NHibernate.Linq.Visitors.MemberNameVisitor V_0,
             string V_1,
             class [NHibernate]NHibernate.Metadata.IClassMetadata V_2,
             class [NHibernate]NHibernate.Criterion.Disjunction V_3,
             string V_4,
             class [NHibernate]NHibernate.Metadata.IClassMetadata V_5,
             class [System.Core]System.Linq.Expressions.Expression V_6,
             bool V_7,
             class [mscorlib]System.Collections.Generic.IEnumerator`1<string> V_8)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.WhereArgumentsVisitor::rootCriteria
    IL_0007:  newobj     instance void NHibernate.Linq.Visitors.MemberNameVisitor::.ctor(class [NHibernate]NHibernate.ICriteria)
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0014:  pop
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance string NHibernate.Linq.Visitors.MemberNameVisitor::get_MemberName()
    IL_001b:  ldstr      ".class"
    IL_0020:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0025:  stloc.1
    IL_0026:  ldarg.0
    IL_0027:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.WhereArgumentsVisitor::session
    IL_002c:  callvirt   instance class [NHibernate]NHibernate.ISessionFactory [NHibernate]NHibernate.ISession::get_SessionFactory()
    IL_0031:  ldarg.1
    IL_0032:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.TypeBinaryExpression::get_TypeOperand()
    IL_0037:  callvirt   instance class [NHibernate]NHibernate.Metadata.IClassMetadata [NHibernate]NHibernate.ISessionFactory::GetClassMetadata(class [mscorlib]System.Type)
    IL_003c:  stloc.2
    IL_003d:  ldloc.2
    IL_003e:  callvirt   instance bool [NHibernate]NHibernate.Metadata.IClassMetadata::get_HasSubclasses()
    IL_0043:  ldc.i4.0
    IL_0044:  ceq
    IL_0046:  stloc.s    V_7
    IL_0048:  ldloc.s    V_7
    IL_004a:  brtrue     IL_00dd

    IL_004f:  nop
    IL_0050:  newobj     instance void [NHibernate]NHibernate.Criterion.Disjunction::.ctor()
    IL_0055:  stloc.3
    IL_0056:  nop
    IL_0057:  ldloc.2
    IL_0058:  castclass  [NHibernate]NHibernate.Persister.Entity.IEntityPersister
    IL_005d:  callvirt   instance class [NHibernate]NHibernate.Tuple.Entity.EntityMetamodel [NHibernate]NHibernate.Persister.Entity.IEntityPersister::get_EntityMetamodel()
    IL_0062:  callvirt   instance class [Iesi.Collections]Iesi.Collections.Generic.ISet`1<string> [NHibernate]NHibernate.Tuple.Entity.EntityMetamodel::get_SubclassEntityNames()
    IL_0067:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.Generic.IEnumerable`1<string>::GetEnumerator()
    IL_006c:  stloc.s    V_8
    .try
    {
      IL_006e:  br.s       IL_00a9

      IL_0070:  ldloc.s    V_8
      IL_0072:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<string>::get_Current()
      IL_0077:  stloc.s    V_4
      IL_0079:  nop
      IL_007a:  ldarg.0
      IL_007b:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.WhereArgumentsVisitor::session
      IL_0080:  callvirt   instance class [NHibernate]NHibernate.ISessionFactory [NHibernate]NHibernate.ISession::get_SessionFactory()
      IL_0085:  ldloc.s    V_4
      IL_0087:  callvirt   instance class [NHibernate]NHibernate.Metadata.IClassMetadata [NHibernate]NHibernate.ISessionFactory::GetClassMetadata(string)
      IL_008c:  stloc.s    V_5
      IL_008e:  ldloc.3
      IL_008f:  ldloc.1
      IL_0090:  call       class [NHibernate]NHibernate.Criterion.Property [NHibernate]NHibernate.Criterion.Property::ForName(string)
      IL_0095:  ldloc.s    V_5
      IL_0097:  ldc.i4.0
      IL_0098:  callvirt   instance class [mscorlib]System.Type [NHibernate]NHibernate.Metadata.IClassMetadata::GetMappedClass(valuetype [NHibernate]NHibernate.EntityMode)
      IL_009d:  callvirt   instance class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Property::Eq(object)
      IL_00a2:  callvirt   instance class [NHibernate]NHibernate.Criterion.Junction [NHibernate]NHibernate.Criterion.Junction::Add(class [NHibernate]NHibernate.Criterion.ICriterion)
      IL_00a7:  pop
      IL_00a8:  nop
      IL_00a9:  ldloc.s    V_8
      IL_00ab:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_00b0:  stloc.s    V_7
      IL_00b2:  ldloc.s    V_7
      IL_00b4:  brtrue.s   IL_0070

      IL_00b6:  leave.s    IL_00cc

    }  // end .try
    finally
    {
      IL_00b8:  ldloc.s    V_8
      IL_00ba:  ldnull
      IL_00bb:  ceq
      IL_00bd:  stloc.s    V_7
      IL_00bf:  ldloc.s    V_7
      IL_00c1:  brtrue.s   IL_00cb

      IL_00c3:  ldloc.s    V_8
      IL_00c5:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_00ca:  nop
      IL_00cb:  endfinally
    }  // end handler
    IL_00cc:  nop
    IL_00cd:  ldloc.0
    IL_00ce:  callvirt   instance class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.MemberNameVisitor::get_CurrentCriteria()
    IL_00d3:  ldloc.3
    IL_00d4:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::Add(class [NHibernate]NHibernate.Criterion.ICriterion)
    IL_00d9:  pop
    IL_00da:  nop
    IL_00db:  br.s       IL_00fc

    IL_00dd:  nop
    IL_00de:  ldloc.0
    IL_00df:  callvirt   instance class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.MemberNameVisitor::get_CurrentCriteria()
    IL_00e4:  ldloc.1
    IL_00e5:  call       class [NHibernate]NHibernate.Criterion.Property [NHibernate]NHibernate.Criterion.Property::ForName(string)
    IL_00ea:  ldarg.1
    IL_00eb:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.TypeBinaryExpression::get_TypeOperand()
    IL_00f0:  callvirt   instance class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Property::Eq(object)
    IL_00f5:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::Add(class [NHibernate]NHibernate.Criterion.ICriterion)
    IL_00fa:  pop
    IL_00fb:  nop
    IL_00fc:  ldarg.1
    IL_00fd:  stloc.s    V_6
    IL_00ff:  br.s       IL_0101

    IL_0101:  ldloc.s    V_6
    IL_0103:  ret
  } // end of method WhereArgumentsVisitor::VisitTypeIs

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitBinary(class [System.Core]System.Linq.Expressions.BinaryExpression expr) cil managed
  {
    // Code size       55 (0x37)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             valuetype [System.Core]System.Linq.Expressions.ExpressionType V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.ExpressionType [System.Core]System.Linq.Expressions.Expression::get_NodeType()
    IL_0007:  stloc.1
    IL_0008:  ldloc.1
    IL_0009:  ldc.i4.3
    IL_000a:  beq.s      IL_0013

    IL_000c:  ldloc.1
    IL_000d:  ldc.i4.s   37
    IL_000f:  beq.s      IL_001d

    IL_0011:  br.s       IL_0027

    IL_0013:  ldarg.0
    IL_0014:  ldarg.1
    IL_0015:  call       instance void NHibernate.Linq.Visitors.WhereArgumentsVisitor::VisitAndAlsoExpression(class [System.Core]System.Linq.Expressions.BinaryExpression)
    IL_001a:  nop
    IL_001b:  br.s       IL_0031

    IL_001d:  ldarg.0
    IL_001e:  ldarg.1
    IL_001f:  call       instance void NHibernate.Linq.Visitors.WhereArgumentsVisitor::VisitOrElseExpression(class [System.Core]System.Linq.Expressions.BinaryExpression)
    IL_0024:  nop
    IL_0025:  br.s       IL_0031

    IL_0027:  ldarg.0
    IL_0028:  ldarg.1
    IL_0029:  call       instance void NHibernate.Linq.Visitors.WhereArgumentsVisitor::VisitBinaryCriterionExpression(class [System.Core]System.Linq.Expressions.BinaryExpression)
    IL_002e:  nop
    IL_002f:  br.s       IL_0031

    IL_0031:  ldarg.1
    IL_0032:  stloc.0
    IL_0033:  br.s       IL_0035

    IL_0035:  ldloc.0
    IL_0036:  ret
  } // end of method WhereArgumentsVisitor::VisitBinary

  .method private hidebysig instance void 
          VisitAndAlsoExpression(class [System.Core]System.Linq.Expressions.BinaryExpression expr) cil managed
  {
    // Code size       134 (0x86)
    .maxstack  2
    .locals init (class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion> V_0,
             class [NHibernate]NHibernate.Criterion.Conjunction V_1,
             class [NHibernate]NHibernate.Criterion.ICriterion V_2,
             class [mscorlib]System.Collections.Generic.IEnumerator`1<class [NHibernate]NHibernate.Criterion.ICriterion> V_3,
             bool V_4)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [System]System.Collections.Generic.Stack`1<class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion>> NHibernate.Linq.Visitors.WhereArgumentsVisitor::criterionStack
    IL_0007:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.ICriterion>::.ctor()
    IL_000c:  callvirt   instance void class [System]System.Collections.Generic.Stack`1<class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion>>::Push(!0)
    IL_0011:  nop
    IL_0012:  ldarg.0
    IL_0013:  ldarg.1
    IL_0014:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.BinaryExpression::get_Left()
    IL_0019:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_001e:  pop
    IL_001f:  ldarg.0
    IL_0020:  ldarg.1
    IL_0021:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.BinaryExpression::get_Right()
    IL_0026:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_002b:  pop
    IL_002c:  ldarg.0
    IL_002d:  ldfld      class [System]System.Collections.Generic.Stack`1<class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion>> NHibernate.Linq.Visitors.WhereArgumentsVisitor::criterionStack
    IL_0032:  callvirt   instance !0 class [System]System.Collections.Generic.Stack`1<class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion>>::Pop()
    IL_0037:  stloc.0
    IL_0038:  newobj     instance void [NHibernate]NHibernate.Criterion.Conjunction::.ctor()
    IL_003d:  stloc.1
    IL_003e:  nop
    IL_003f:  ldloc.0
    IL_0040:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.Generic.IEnumerable`1<class [NHibernate]NHibernate.Criterion.ICriterion>::GetEnumerator()
    IL_0045:  stloc.3
    .try
    {
      IL_0046:  br.s       IL_0057

      IL_0048:  ldloc.3
      IL_0049:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class [NHibernate]NHibernate.Criterion.ICriterion>::get_Current()
      IL_004e:  stloc.2
      IL_004f:  ldloc.1
      IL_0050:  ldloc.2
      IL_0051:  callvirt   instance class [NHibernate]NHibernate.Criterion.Junction [NHibernate]NHibernate.Criterion.Junction::Add(class [NHibernate]NHibernate.Criterion.ICriterion)
      IL_0056:  pop
      IL_0057:  ldloc.3
      IL_0058:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_005d:  stloc.s    V_4
      IL_005f:  ldloc.s    V_4
      IL_0061:  brtrue.s   IL_0048

      IL_0063:  leave.s    IL_0077

    }  // end .try
    finally
    {
      IL_0065:  ldloc.3
      IL_0066:  ldnull
      IL_0067:  ceq
      IL_0069:  stloc.s    V_4
      IL_006b:  ldloc.s    V_4
      IL_006d:  brtrue.s   IL_0076

      IL_006f:  ldloc.3
      IL_0070:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0075:  nop
      IL_0076:  endfinally
    }  // end handler
    IL_0077:  nop
    IL_0078:  ldarg.0
    IL_0079:  call       instance class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::get_CurrentCriterions()
    IL_007e:  ldloc.1
    IL_007f:  callvirt   instance void class [mscorlib]System.Collections.Generic.ICollection`1<class [NHibernate]NHibernate.Criterion.ICriterion>::Add(!0)
    IL_0084:  nop
    IL_0085:  ret
  } // end of method WhereArgumentsVisitor::VisitAndAlsoExpression

  .method private hidebysig instance void 
          VisitOrElseExpression(class [System.Core]System.Linq.Expressions.BinaryExpression expr) cil managed
  {
    // Code size       136 (0x88)
    .maxstack  2
    .locals init (class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion> V_0,
             class [NHibernate]NHibernate.Criterion.Disjunction V_1,
             class [NHibernate]NHibernate.Criterion.ICriterion V_2,
             class [mscorlib]System.Collections.Generic.IEnumerator`1<class [NHibernate]NHibernate.Criterion.ICriterion> V_3,
             bool V_4)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [System]System.Collections.Generic.Stack`1<class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion>> NHibernate.Linq.Visitors.WhereArgumentsVisitor::criterionStack
    IL_0007:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class [NHibernate]NHibernate.Criterion.ICriterion>::.ctor()
    IL_000c:  callvirt   instance void class [System]System.Collections.Generic.Stack`1<class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion>>::Push(!0)
    IL_0011:  nop
    IL_0012:  ldarg.0
    IL_0013:  ldarg.1
    IL_0014:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.BinaryExpression::get_Left()
    IL_0019:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_001e:  pop
    IL_001f:  ldarg.0
    IL_0020:  ldarg.1
    IL_0021:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.BinaryExpression::get_Right()
    IL_0026:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_002b:  pop
    IL_002c:  ldarg.0
    IL_002d:  ldfld      class [System]System.Collections.Generic.Stack`1<class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion>> NHibernate.Linq.Visitors.WhereArgumentsVisitor::criterionStack
    IL_0032:  callvirt   instance !0 class [System]System.Collections.Generic.Stack`1<class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion>>::Pop()
    IL_0037:  stloc.0
    IL_0038:  newobj     instance void [NHibernate]NHibernate.Criterion.Disjunction::.ctor()
    IL_003d:  stloc.1
    IL_003e:  nop
    IL_003f:  ldloc.0
    IL_0040:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.Generic.IEnumerable`1<class [NHibernate]NHibernate.Criterion.ICriterion>::GetEnumerator()
    IL_0045:  stloc.3
    .try
    {
      IL_0046:  br.s       IL_0059

      IL_0048:  ldloc.3
      IL_0049:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class [NHibernate]NHibernate.Criterion.ICriterion>::get_Current()
      IL_004e:  stloc.2
      IL_004f:  nop
      IL_0050:  ldloc.1
      IL_0051:  ldloc.2
      IL_0052:  callvirt   instance class [NHibernate]NHibernate.Criterion.Junction [NHibernate]NHibernate.Criterion.Junction::Add(class [NHibernate]NHibernate.Criterion.ICriterion)
      IL_0057:  pop
      IL_0058:  nop
      IL_0059:  ldloc.3
      IL_005a:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_005f:  stloc.s    V_4
      IL_0061:  ldloc.s    V_4
      IL_0063:  brtrue.s   IL_0048

      IL_0065:  leave.s    IL_0079

    }  // end .try
    finally
    {
      IL_0067:  ldloc.3
      IL_0068:  ldnull
      IL_0069:  ceq
      IL_006b:  stloc.s    V_4
      IL_006d:  ldloc.s    V_4
      IL_006f:  brtrue.s   IL_0078

      IL_0071:  ldloc.3
      IL_0072:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0077:  nop
      IL_0078:  endfinally
    }  // end handler
    IL_0079:  nop
    IL_007a:  ldarg.0
    IL_007b:  call       instance class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::get_CurrentCriterions()
    IL_0080:  ldloc.1
    IL_0081:  callvirt   instance void class [mscorlib]System.Collections.Generic.ICollection`1<class [NHibernate]NHibernate.Criterion.ICriterion>::Add(!0)
    IL_0086:  nop
    IL_0087:  ret
  } // end of method WhereArgumentsVisitor::VisitOrElseExpression

  .method private hidebysig instance void 
          VisitBinaryCriterionExpression(class [System.Core]System.Linq.Expressions.BinaryExpression expr) cil managed
  {
    // Code size       483 (0x1e3)
    .maxstack  8
    .locals init (class NHibernate.Linq.Visitors.ComparePropToValue V_0,
             class NHibernate.Linq.Visitors.ComparePropToProp V_1,
             class NHibernate.Linq.Visitors.CompareValueToCriteria V_2,
             class NHibernate.Linq.Visitors.ComparePropToCriteria V_3,
             valuetype [System.Core]System.Linq.Expressions.ExpressionType V_4)
    IL_0000:  nop
    IL_0001:  ldnull
    IL_0002:  stloc.0
    IL_0003:  ldnull
    IL_0004:  stloc.1
    IL_0005:  ldnull
    IL_0006:  stloc.2
    IL_0007:  ldnull
    IL_0008:  stloc.3
    IL_0009:  ldarg.1
    IL_000a:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.ExpressionType [System.Core]System.Linq.Expressions.Expression::get_NodeType()
    IL_000f:  stloc.s    V_4
    IL_0011:  ldloc.s    V_4
    IL_0013:  ldc.i4.s   13
    IL_0015:  sub
    IL_0016:  switch     ( 
                          IL_004d,
                          IL_01c0,
                          IL_0099,
                          IL_00d2,
                          IL_01c0,
                          IL_01c0,
                          IL_01c0,
                          IL_010b,
                          IL_0141)
    IL_003f:  ldloc.s    V_4
    IL_0041:  ldc.i4.s   35
    IL_0043:  beq        IL_0177

    IL_0048:  br         IL_01c0

    IL_004d:  ldsfld     class NHibernate.Linq.Visitors.ComparePropToValue NHibernate.Linq.Visitors.WhereArgumentsVisitor::'CS$<>9__CachedAnonymousMethodDelegate2'
    IL_0052:  brtrue.s   IL_0067

    IL_0054:  ldnull
    IL_0055:  ldftn      class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Visitors.WhereArgumentsVisitor::'<VisitBinaryCriterionExpression>b__0'(string,
                                                                                                                                                                  object)
    IL_005b:  newobj     instance void NHibernate.Linq.Visitors.ComparePropToValue::.ctor(object,
                                                                                          native int)
    IL_0060:  stsfld     class NHibernate.Linq.Visitors.ComparePropToValue NHibernate.Linq.Visitors.WhereArgumentsVisitor::'CS$<>9__CachedAnonymousMethodDelegate2'
    IL_0065:  br.s       IL_0067

    IL_0067:  ldsfld     class NHibernate.Linq.Visitors.ComparePropToValue NHibernate.Linq.Visitors.WhereArgumentsVisitor::'CS$<>9__CachedAnonymousMethodDelegate2'
    IL_006c:  stloc.0
    IL_006d:  ldnull
    IL_006e:  ldftn      class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Restrictions::EqProperty(string,
                                                                                                                                            string)
    IL_0074:  newobj     instance void NHibernate.Linq.Visitors.ComparePropToProp::.ctor(object,
                                                                                         native int)
    IL_0079:  stloc.1
    IL_007a:  ldnull
    IL_007b:  ldftn      class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Subqueries::Eq(object,
                                                                                                                                  class [NHibernate]NHibernate.Criterion.DetachedCriteria)
    IL_0081:  newobj     instance void NHibernate.Linq.Visitors.CompareValueToCriteria::.ctor(object,
                                                                                              native int)
    IL_0086:  stloc.2
    IL_0087:  ldnull
    IL_0088:  ldftn      class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Subqueries::PropertyEq(string,
                                                                                                                                          class [NHibernate]NHibernate.Criterion.DetachedCriteria)
    IL_008e:  newobj     instance void NHibernate.Linq.Visitors.ComparePropToCriteria::.ctor(object,
                                                                                             native int)
    IL_0093:  stloc.3
    IL_0094:  br         IL_01c0

    IL_0099:  ldnull
    IL_009a:  ldftn      class [NHibernate]NHibernate.Criterion.SimpleExpression [NHibernate]NHibernate.Criterion.Restrictions::Gt(string,
                                                                                                                                   object)
    IL_00a0:  newobj     instance void NHibernate.Linq.Visitors.ComparePropToValue::.ctor(object,
                                                                                          native int)
    IL_00a5:  stloc.0
    IL_00a6:  ldnull
    IL_00a7:  ldftn      class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Restrictions::GtProperty(string,
                                                                                                                                            string)
    IL_00ad:  newobj     instance void NHibernate.Linq.Visitors.ComparePropToProp::.ctor(object,
                                                                                         native int)
    IL_00b2:  stloc.1
    IL_00b3:  ldnull
    IL_00b4:  ldftn      class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Subqueries::Gt(object,
                                                                                                                                  class [NHibernate]NHibernate.Criterion.DetachedCriteria)
    IL_00ba:  newobj     instance void NHibernate.Linq.Visitors.CompareValueToCriteria::.ctor(object,
                                                                                              native int)
    IL_00bf:  stloc.2
    IL_00c0:  ldnull
    IL_00c1:  ldftn      class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Subqueries::PropertyGt(string,
                                                                                                                                          class [NHibernate]NHibernate.Criterion.DetachedCriteria)
    IL_00c7:  newobj     instance void NHibernate.Linq.Visitors.ComparePropToCriteria::.ctor(object,
                                                                                             native int)
    IL_00cc:  stloc.3
    IL_00cd:  br         IL_01c0

    IL_00d2:  ldnull
    IL_00d3:  ldftn      class [NHibernate]NHibernate.Criterion.SimpleExpression [NHibernate]NHibernate.Criterion.Restrictions::Ge(string,
                                                                                                                                   object)
    IL_00d9:  newobj     instance void NHibernate.Linq.Visitors.ComparePropToValue::.ctor(object,
                                                                                          native int)
    IL_00de:  stloc.0
    IL_00df:  ldnull
    IL_00e0:  ldftn      class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Restrictions::GeProperty(string,
                                                                                                                                            string)
    IL_00e6:  newobj     instance void NHibernate.Linq.Visitors.ComparePropToProp::.ctor(object,
                                                                                         native int)
    IL_00eb:  stloc.1
    IL_00ec:  ldnull
    IL_00ed:  ldftn      class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Subqueries::Ge(object,
                                                                                                                                  class [NHibernate]NHibernate.Criterion.DetachedCriteria)
    IL_00f3:  newobj     instance void NHibernate.Linq.Visitors.CompareValueToCriteria::.ctor(object,
                                                                                              native int)
    IL_00f8:  stloc.2
    IL_00f9:  ldnull
    IL_00fa:  ldftn      class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Subqueries::PropertyGe(string,
                                                                                                                                          class [NHibernate]NHibernate.Criterion.DetachedCriteria)
    IL_0100:  newobj     instance void NHibernate.Linq.Visitors.ComparePropToCriteria::.ctor(object,
                                                                                             native int)
    IL_0105:  stloc.3
    IL_0106:  br         IL_01c0

    IL_010b:  ldnull
    IL_010c:  ldftn      class [NHibernate]NHibernate.Criterion.SimpleExpression [NHibernate]NHibernate.Criterion.Restrictions::Lt(string,
                                                                                                                                   object)
    IL_0112:  newobj     instance void NHibernate.Linq.Visitors.ComparePropToValue::.ctor(object,
                                                                                          native int)
    IL_0117:  stloc.0
    IL_0118:  ldnull
    IL_0119:  ldftn      class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Restrictions::LtProperty(string,
                                                                                                                                            string)
    IL_011f:  newobj     instance void NHibernate.Linq.Visitors.ComparePropToProp::.ctor(object,
                                                                                         native int)
    IL_0124:  stloc.1
    IL_0125:  ldnull
    IL_0126:  ldftn      class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Subqueries::Lt(object,
                                                                                                                                  class [NHibernate]NHibernate.Criterion.DetachedCriteria)
    IL_012c:  newobj     instance void NHibernate.Linq.Visitors.CompareValueToCriteria::.ctor(object,
                                                                                              native int)
    IL_0131:  stloc.2
    IL_0132:  ldnull
    IL_0133:  ldftn      class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Subqueries::PropertyLt(string,
                                                                                                                                          class [NHibernate]NHibernate.Criterion.DetachedCriteria)
    IL_0139:  newobj     instance void NHibernate.Linq.Visitors.ComparePropToCriteria::.ctor(object,
                                                                                             native int)
    IL_013e:  stloc.3
    IL_013f:  br.s       IL_01c0

    IL_0141:  ldnull
    IL_0142:  ldftn      class [NHibernate]NHibernate.Criterion.SimpleExpression [NHibernate]NHibernate.Criterion.Restrictions::Le(string,
                                                                                                                                   object)
    IL_0148:  newobj     instance void NHibernate.Linq.Visitors.ComparePropToValue::.ctor(object,
                                                                                          native int)
    IL_014d:  stloc.0
    IL_014e:  ldnull
    IL_014f:  ldftn      class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Restrictions::LeProperty(string,
                                                                                                                                            string)
    IL_0155:  newobj     instance void NHibernate.Linq.Visitors.ComparePropToProp::.ctor(object,
                                                                                         native int)
    IL_015a:  stloc.1
    IL_015b:  ldnull
    IL_015c:  ldftn      class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Subqueries::Le(object,
                                                                                                                                  class [NHibernate]NHibernate.Criterion.DetachedCriteria)
    IL_0162:  newobj     instance void NHibernate.Linq.Visitors.CompareValueToCriteria::.ctor(object,
                                                                                              native int)
    IL_0167:  stloc.2
    IL_0168:  ldnull
    IL_0169:  ldftn      class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Subqueries::PropertyLe(string,
                                                                                                                                          class [NHibernate]NHibernate.Criterion.DetachedCriteria)
    IL_016f:  newobj     instance void NHibernate.Linq.Visitors.ComparePropToCriteria::.ctor(object,
                                                                                             native int)
    IL_0174:  stloc.3
    IL_0175:  br.s       IL_01c0

    IL_0177:  ldsfld     class NHibernate.Linq.Visitors.ComparePropToValue NHibernate.Linq.Visitors.WhereArgumentsVisitor::'CS$<>9__CachedAnonymousMethodDelegate3'
    IL_017c:  brtrue.s   IL_0191

    IL_017e:  ldnull
    IL_017f:  ldftn      class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Visitors.WhereArgumentsVisitor::'<VisitBinaryCriterionExpression>b__1'(string,
                                                                                                                                                                  object)
    IL_0185:  newobj     instance void NHibernate.Linq.Visitors.ComparePropToValue::.ctor(object,
                                                                                          native int)
    IL_018a:  stsfld     class NHibernate.Linq.Visitors.ComparePropToValue NHibernate.Linq.Visitors.WhereArgumentsVisitor::'CS$<>9__CachedAnonymousMethodDelegate3'
    IL_018f:  br.s       IL_0191

    IL_0191:  ldsfld     class NHibernate.Linq.Visitors.ComparePropToValue NHibernate.Linq.Visitors.WhereArgumentsVisitor::'CS$<>9__CachedAnonymousMethodDelegate3'
    IL_0196:  stloc.0
    IL_0197:  ldnull
    IL_0198:  ldftn      class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Restrictions::NotEqProperty(string,
                                                                                                                                               string)
    IL_019e:  newobj     instance void NHibernate.Linq.Visitors.ComparePropToProp::.ctor(object,
                                                                                         native int)
    IL_01a3:  stloc.1
    IL_01a4:  ldnull
    IL_01a5:  ldftn      class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Subqueries::Ne(object,
                                                                                                                                  class [NHibernate]NHibernate.Criterion.DetachedCriteria)
    IL_01ab:  newobj     instance void NHibernate.Linq.Visitors.CompareValueToCriteria::.ctor(object,
                                                                                              native int)
    IL_01b0:  stloc.2
    IL_01b1:  ldnull
    IL_01b2:  ldftn      class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Subqueries::PropertyNe(string,
                                                                                                                                          class [NHibernate]NHibernate.Criterion.DetachedCriteria)
    IL_01b8:  newobj     instance void NHibernate.Linq.Visitors.ComparePropToCriteria::.ctor(object,
                                                                                             native int)
    IL_01bd:  stloc.3
    IL_01be:  br.s       IL_01c0

    IL_01c0:  ldarg.0
    IL_01c1:  call       instance class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::get_CurrentCriterions()
    IL_01c6:  ldarg.0
    IL_01c7:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.WhereArgumentsVisitor::rootCriteria
    IL_01cc:  ldarg.0
    IL_01cd:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.WhereArgumentsVisitor::session
    IL_01d2:  ldarg.1
    IL_01d3:  ldloc.0
    IL_01d4:  ldloc.1
    IL_01d5:  ldloc.2
    IL_01d6:  ldloc.3
    IL_01d7:  call       class [NHibernate]NHibernate.Criterion.ICriterion NHibernate.Linq.Visitors.BinaryCriterionVisitor::GetBinaryCriteria(class [NHibernate]NHibernate.ICriteria,
                                                                                                                                              class [NHibernate]NHibernate.ISession,
                                                                                                                                              class [System.Core]System.Linq.Expressions.BinaryExpression,
                                                                                                                                              class NHibernate.Linq.Visitors.ComparePropToValue,
                                                                                                                                              class NHibernate.Linq.Visitors.ComparePropToProp,
                                                                                                                                              class NHibernate.Linq.Visitors.CompareValueToCriteria,
                                                                                                                                              class NHibernate.Linq.Visitors.ComparePropToCriteria)
    IL_01dc:  callvirt   instance void class [mscorlib]System.Collections.Generic.ICollection`1<class [NHibernate]NHibernate.Criterion.ICriterion>::Add(!0)
    IL_01e1:  nop
    IL_01e2:  ret
  } // end of method WhereArgumentsVisitor::VisitBinaryCriterionExpression

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitUnary(class [System.Core]System.Linq.Expressions.UnaryExpression expr) cil managed
  {
    // Code size       51 (0x33)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0,
             valuetype [System.Core]System.Linq.Expressions.ExpressionType V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance valuetype [System.Core]System.Linq.Expressions.ExpressionType [System.Core]System.Linq.Expressions.Expression::get_NodeType()
    IL_0007:  stloc.1
    IL_0008:  ldloc.1
    IL_0009:  ldc.i4.s   34
    IL_000b:  beq.s      IL_0023

    IL_000d:  ldloc.1
    IL_000e:  ldc.i4.s   40
    IL_0010:  beq.s      IL_0014

    IL_0012:  br.s       IL_002d

    IL_0014:  ldarg.0
    IL_0015:  ldarg.1
    IL_0016:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.UnaryExpression::get_Operand()
    IL_001b:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0020:  pop
    IL_0021:  br.s       IL_002d

    IL_0023:  ldarg.0
    IL_0024:  ldarg.1
    IL_0025:  call       instance void NHibernate.Linq.Visitors.WhereArgumentsVisitor::VisitNotExpression(class [System.Core]System.Linq.Expressions.UnaryExpression)
    IL_002a:  nop
    IL_002b:  br.s       IL_002d

    IL_002d:  ldarg.1
    IL_002e:  stloc.0
    IL_002f:  br.s       IL_0031

    IL_0031:  ldloc.0
    IL_0032:  ret
  } // end of method WhereArgumentsVisitor::VisitUnary

  .method private hidebysig instance void 
          VisitNotExpression(class [System.Core]System.Linq.Expressions.UnaryExpression expr) cil managed
  {
    // Code size       108 (0x6c)
    .maxstack  3
    .locals init (class [mscorlib]System.Collections.Generic.IEnumerable`1<class [NHibernate]NHibernate.Criterion.ICriterion> V_0,
             class [NHibernate]NHibernate.Criterion.Conjunction V_1,
             class [NHibernate]NHibernate.Criterion.ICriterion V_2,
             class [mscorlib]System.Collections.Generic.IEnumerator`1<class [NHibernate]NHibernate.Criterion.ICriterion> V_3,
             bool V_4)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.WhereArgumentsVisitor::rootCriteria
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.WhereArgumentsVisitor::session
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.UnaryExpression::get_Operand()
    IL_0013:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::GetCriterion(class [NHibernate]NHibernate.ICriteria,
                                                                                                                                                                                                  class [NHibernate]NHibernate.ISession,
                                                                                                                                                                                                  class [System.Core]System.Linq.Expressions.Expression)
    IL_0018:  stloc.0
    IL_0019:  call       class [NHibernate]NHibernate.Criterion.Conjunction [NHibernate]NHibernate.Criterion.Restrictions::Conjunction()
    IL_001e:  stloc.1
    IL_001f:  nop
    IL_0020:  ldloc.0
    IL_0021:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.Generic.IEnumerable`1<class [NHibernate]NHibernate.Criterion.ICriterion>::GetEnumerator()
    IL_0026:  stloc.3
    .try
    {
      IL_0027:  br.s       IL_0038

      IL_0029:  ldloc.3
      IL_002a:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class [NHibernate]NHibernate.Criterion.ICriterion>::get_Current()
      IL_002f:  stloc.2
      IL_0030:  ldloc.1
      IL_0031:  ldloc.2
      IL_0032:  callvirt   instance class [NHibernate]NHibernate.Criterion.Junction [NHibernate]NHibernate.Criterion.Junction::Add(class [NHibernate]NHibernate.Criterion.ICriterion)
      IL_0037:  pop
      IL_0038:  ldloc.3
      IL_0039:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_003e:  stloc.s    V_4
      IL_0040:  ldloc.s    V_4
      IL_0042:  brtrue.s   IL_0029

      IL_0044:  leave.s    IL_0058

    }  // end .try
    finally
    {
      IL_0046:  ldloc.3
      IL_0047:  ldnull
      IL_0048:  ceq
      IL_004a:  stloc.s    V_4
      IL_004c:  ldloc.s    V_4
      IL_004e:  brtrue.s   IL_0057

      IL_0050:  ldloc.3
      IL_0051:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0056:  nop
      IL_0057:  endfinally
    }  // end handler
    IL_0058:  nop
    IL_0059:  ldarg.0
    IL_005a:  call       instance class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::get_CurrentCriterions()
    IL_005f:  ldloc.1
    IL_0060:  call       class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Restrictions::Not(class [NHibernate]NHibernate.Criterion.ICriterion)
    IL_0065:  callvirt   instance void class [mscorlib]System.Collections.Generic.ICollection`1<class [NHibernate]NHibernate.Criterion.ICriterion>::Add(!0)
    IL_006a:  nop
    IL_006b:  ret
  } // end of method WhereArgumentsVisitor::VisitNotExpression

  .method family hidebysig virtual instance class [System.Core]System.Linq.Expressions.Expression 
          VisitPropertyAccess(class NHibernate.Linq.Expressions.PropertyAccessExpression expr) cil managed
  {
    // Code size       71 (0x47)
    .maxstack  3
    .locals init (string V_0,
             class [System.Core]System.Linq.Expressions.Expression V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_0007:  ldtoken    [mscorlib]System.Boolean
    IL_000c:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0011:  ceq
    IL_0013:  ldc.i4.0
    IL_0014:  ceq
    IL_0016:  stloc.2
    IL_0017:  ldloc.2
    IL_0018:  brtrue.s   IL_0041

    IL_001a:  nop
    IL_001b:  ldarg.0
    IL_001c:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.WhereArgumentsVisitor::rootCriteria
    IL_0021:  ldarg.1
    IL_0022:  call       string NHibernate.Linq.Visitors.MemberNameVisitor::GetMemberName(class [NHibernate]NHibernate.ICriteria,
                                                                                          class [System.Core]System.Linq.Expressions.Expression)
    IL_0027:  stloc.0
    IL_0028:  ldarg.0
    IL_0029:  call       instance class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::get_CurrentCriterions()
    IL_002e:  ldloc.0
    IL_002f:  ldc.i4.1
    IL_0030:  box        [mscorlib]System.Boolean
    IL_0035:  call       class [NHibernate]NHibernate.Criterion.SimpleExpression [NHibernate]NHibernate.Criterion.Restrictions::Eq(string,
                                                                                                                                   object)
    IL_003a:  callvirt   instance void class [mscorlib]System.Collections.Generic.ICollection`1<class [NHibernate]NHibernate.Criterion.ICriterion>::Add(!0)
    IL_003f:  nop
    IL_0040:  nop
    IL_0041:  ldarg.1
    IL_0042:  stloc.1
    IL_0043:  br.s       IL_0045

    IL_0045:  ldloc.1
    IL_0046:  ret
  } // end of method WhereArgumentsVisitor::VisitPropertyAccess

  .method private hidebysig instance class [NHibernate]NHibernate.Criterion.ICriterion 
          GetExistsCriteria(class [System.Core]System.Linq.Expressions.MethodCallExpression expr) cil managed
  {
    // Code size       312 (0x138)
    .maxstack  3
    .locals init (class NHibernate.Linq.Expressions.EntityExpression V_0,
             string V_1,
             class [mscorlib]System.Type V_2,
             class [NHibernate]NHibernate.Criterion.DetachedCriteria V_3,
             class [System.Core]System.Linq.Expressions.LambdaExpression V_4,
             string V_5,
             class [NHibernate]NHibernate.Criterion.DetachedCriteria V_6,
             class NHibernate.Linq.Visitors.WhereArgumentsVisitor V_7,
             class [NHibernate]NHibernate.Criterion.ICriterion V_8,
             string V_9,
             class [NHibernate]NHibernate.Criterion.ICriterion V_10,
             bool V_11,
             class [mscorlib]System.Collections.Generic.IEnumerator`1<class [NHibernate]NHibernate.Criterion.ICriterion> V_12)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  call       class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Visitors.EntityExpressionVisitor::FirstEntity(class [System.Core]System.Linq.Expressions.Expression)
    IL_0007:  stloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.WhereArgumentsVisitor::rootCriteria
    IL_000e:  ldarg.1
    IL_000f:  call       string NHibernate.Linq.Visitors.MemberNameVisitor::GetMemberName(class [NHibernate]NHibernate.ICriteria,
                                                                                          class [System.Core]System.Linq.Expressions.Expression)
    IL_0014:  stloc.1
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_001b:  stloc.2
    IL_001c:  ldloc.0
    IL_001d:  callvirt   instance class [NHibernate]NHibernate.Metadata.IClassMetadata NHibernate.Linq.Expressions.EntityExpression::get_MetaData()
    IL_0022:  callvirt   instance bool [NHibernate]NHibernate.Metadata.IClassMetadata::get_HasProxy()
    IL_0027:  ldc.i4.0
    IL_0028:  ceq
    IL_002a:  stloc.s    V_11
    IL_002c:  ldloc.s    V_11
    IL_002e:  brtrue.s   IL_003f

    IL_0030:  nop
    IL_0031:  ldloc.0
    IL_0032:  callvirt   instance class [NHibernate]NHibernate.Metadata.IClassMetadata NHibernate.Linq.Expressions.EntityExpression::get_MetaData()
    IL_0037:  ldc.i4.0
    IL_0038:  callvirt   instance class [mscorlib]System.Type [NHibernate]NHibernate.Metadata.IClassMetadata::GetMappedClass(valuetype [NHibernate]NHibernate.EntityMode)
    IL_003d:  stloc.2
    IL_003e:  nop
    IL_003f:  ldloc.2
    IL_0040:  call       class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::For(class [mscorlib]System.Type)
    IL_0045:  call       class [NHibernate]NHibernate.Criterion.IdentifierProjection [NHibernate]NHibernate.Criterion.Projections::Id()
    IL_004a:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::SetProjection(class [NHibernate]NHibernate.Criterion.IProjection)
    IL_004f:  ldloc.1
    IL_0050:  call       class [NHibernate]NHibernate.Criterion.AbstractEmptinessExpression [NHibernate]NHibernate.Criterion.Restrictions::IsNotEmpty(string)
    IL_0055:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::Add(class [NHibernate]NHibernate.Criterion.ICriterion)
    IL_005a:  stloc.3
    IL_005b:  ldarg.1
    IL_005c:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_0061:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Count()
    IL_0066:  ldc.i4.1
    IL_0067:  cgt
    IL_0069:  ldc.i4.0
    IL_006a:  ceq
    IL_006c:  stloc.s    V_11
    IL_006e:  ldloc.s    V_11
    IL_0070:  brtrue     IL_0121

    IL_0075:  nop
    IL_0076:  ldarg.1
    IL_0077:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_007c:  ldc.i4.1
    IL_007d:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_0082:  call       class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Util.LinqUtil::StripQuotes(class [System.Core]System.Linq.Expressions.Expression)
    IL_0087:  castclass  [System.Core]System.Linq.Expressions.LambdaExpression
    IL_008c:  stloc.s    V_4
    IL_008e:  ldloc.s    V_4
    IL_0090:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.ParameterExpression> [System.Core]System.Linq.Expressions.LambdaExpression::get_Parameters()
    IL_0095:  ldc.i4.0
    IL_0096:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.ParameterExpression>::get_Item(int32)
    IL_009b:  callvirt   instance string [System.Core]System.Linq.Expressions.ParameterExpression::get_Name()
    IL_00a0:  stloc.s    V_5
    IL_00a2:  ldloc.3
    IL_00a3:  ldloc.1
    IL_00a4:  ldloc.s    V_5
    IL_00a6:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::CreateCriteria(string,
                                                                                                                                                            string)
    IL_00ab:  stloc.s    V_6
    IL_00ad:  ldloc.s    V_6
    IL_00af:  ldarg.0
    IL_00b0:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.WhereArgumentsVisitor::session
    IL_00b5:  call       class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Util.DetachedCriteriaExtensions::Adapt(class [NHibernate]NHibernate.Criterion.DetachedCriteria,
                                                                                                                       class [NHibernate]NHibernate.ISession)
    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.WhereArgumentsVisitor::session
    IL_00c0:  newobj     instance void NHibernate.Linq.Visitors.WhereArgumentsVisitor::.ctor(class [NHibernate]NHibernate.ICriteria,
                                                                                             class [NHibernate]NHibernate.ISession)
    IL_00c5:  stloc.s    V_7
    IL_00c7:  ldloc.s    V_7
    IL_00c9:  ldloc.s    V_4
    IL_00cb:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.LambdaExpression::get_Body()
    IL_00d0:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_00d5:  pop
    IL_00d6:  nop
    IL_00d7:  ldloc.s    V_7
    IL_00d9:  callvirt   instance class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::get_CurrentCriterions()
    IL_00de:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.Generic.IEnumerable`1<class [NHibernate]NHibernate.Criterion.ICriterion>::GetEnumerator()
    IL_00e3:  stloc.s    V_12
    .try
    {
      IL_00e5:  br.s       IL_00fc

      IL_00e7:  ldloc.s    V_12
      IL_00e9:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class [NHibernate]NHibernate.Criterion.ICriterion>::get_Current()
      IL_00ee:  stloc.s    V_8
      IL_00f0:  nop
      IL_00f1:  ldloc.s    V_6
      IL_00f3:  ldloc.s    V_8
      IL_00f5:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::Add(class [NHibernate]NHibernate.Criterion.ICriterion)
      IL_00fa:  pop
      IL_00fb:  nop
      IL_00fc:  ldloc.s    V_12
      IL_00fe:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_0103:  stloc.s    V_11
      IL_0105:  ldloc.s    V_11
      IL_0107:  brtrue.s   IL_00e7

      IL_0109:  leave.s    IL_011f

    }  // end .try
    finally
    {
      IL_010b:  ldloc.s    V_12
      IL_010d:  ldnull
      IL_010e:  ceq
      IL_0110:  stloc.s    V_11
      IL_0112:  ldloc.s    V_11
      IL_0114:  brtrue.s   IL_011e

      IL_0116:  ldloc.s    V_12
      IL_0118:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_011d:  nop
      IL_011e:  endfinally
    }  // end handler
    IL_011f:  nop
    IL_0120:  nop
    IL_0121:  ldloc.0
    IL_0122:  callvirt   instance string NHibernate.Linq.Expressions.EntityExpression::GetAliasedIdentifierPropertyName()
    IL_0127:  stloc.s    V_9
    IL_0129:  ldloc.s    V_9
    IL_012b:  ldloc.3
    IL_012c:  call       class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Subqueries::PropertyIn(string,
                                                                                                                                          class [NHibernate]NHibernate.Criterion.DetachedCriteria)
    IL_0131:  stloc.s    V_10
    IL_0133:  br.s       IL_0135

    IL_0135:  ldloc.s    V_10
    IL_0137:  ret
  } // end of method WhereArgumentsVisitor::GetExistsCriteria

  .method private hidebysig instance class [NHibernate]NHibernate.Criterion.ICriterion 
          GetLikeCriteria(class [System.Core]System.Linq.Expressions.MethodCallExpression expr,
                          class [NHibernate]NHibernate.Criterion.MatchMode matchMode) cil managed
  {
    // Code size       56 (0x38)
    .maxstack  4
    .locals init (class [NHibernate]NHibernate.Criterion.ICriterion V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.WhereArgumentsVisitor::rootCriteria
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.Expressions.MethodCallExpression::get_Object()
    IL_000d:  call       string NHibernate.Linq.Visitors.MemberNameVisitor::GetMemberName(class [NHibernate]NHibernate.ICriteria,
                                                                                          class [System.Core]System.Linq.Expressions.Expression)
    IL_0012:  ldstr      "{0}"
    IL_0017:  ldarg.1
    IL_0018:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression> [System.Core]System.Linq.Expressions.MethodCallExpression::get_Arguments()
    IL_001d:  ldc.i4.0
    IL_001e:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class [System.Core]System.Linq.Expressions.Expression>::get_Item(int32)
    IL_0023:  call       object NHibernate.Linq.Util.QueryUtil::GetExpressionValue(class [System.Core]System.Linq.Expressions.Expression)
    IL_0028:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_002d:  ldarg.2
    IL_002e:  call       class [NHibernate]NHibernate.Criterion.SimpleExpression [NHibernate]NHibernate.Criterion.Restrictions::Like(string,
                                                                                                                                     string,
                                                                                                                                     class [NHibernate]NHibernate.Criterion.MatchMode)
    IL_0033:  stloc.0
    IL_0034:  br.s       IL_0036

    IL_0036:  ldloc.0
    IL_0037:  ret
  } // end of method WhereArgumentsVisitor::GetLikeCriteria

  .method private hidebysig instance class [NHibernate]NHibernate.Criterion.ICriterion 
          GetCollectionContainsCriteria(class NHibernate.Linq.Expressions.CollectionAccessExpression arg,
                                        class [System.Core]System.Linq.Expressions.Expression containsExpression) cil managed
  {
    // Code size       201 (0xc9)
    .maxstack  3
    .locals init (class NHibernate.Linq.Expressions.EntityExpression V_0,
             class [mscorlib]System.Type V_1,
             class [NHibernate]NHibernate.Criterion.DetachedCriteria V_2,
             class NHibernate.Linq.Visitors.MemberNameVisitor V_3,
             object V_4,
             string V_5,
             object V_6,
             string V_7,
             class [NHibernate]NHibernate.Criterion.ICriterion V_8,
             bool V_9)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  call       class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Visitors.EntityExpressionVisitor::FirstEntity(class [System.Core]System.Linq.Expressions.Expression)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_000e:  stloc.1
    IL_000f:  ldloc.0
    IL_0010:  callvirt   instance class [NHibernate]NHibernate.Metadata.IClassMetadata NHibernate.Linq.Expressions.EntityExpression::get_MetaData()
    IL_0015:  callvirt   instance bool [NHibernate]NHibernate.Metadata.IClassMetadata::get_HasProxy()
    IL_001a:  ldc.i4.0
    IL_001b:  ceq
    IL_001d:  stloc.s    V_9
    IL_001f:  ldloc.s    V_9
    IL_0021:  brtrue.s   IL_0032

    IL_0023:  nop
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [NHibernate]NHibernate.Metadata.IClassMetadata NHibernate.Linq.Expressions.EntityExpression::get_MetaData()
    IL_002a:  ldc.i4.0
    IL_002b:  callvirt   instance class [mscorlib]System.Type [NHibernate]NHibernate.Metadata.IClassMetadata::GetMappedClass(valuetype [NHibernate]NHibernate.EntityMode)
    IL_0030:  stloc.1
    IL_0031:  nop
    IL_0032:  ldloc.1
    IL_0033:  call       class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::For(class [mscorlib]System.Type)
    IL_0038:  call       class [NHibernate]NHibernate.Criterion.IdentifierProjection [NHibernate]NHibernate.Criterion.Projections::Id()
    IL_003d:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::SetProjection(class [NHibernate]NHibernate.Criterion.IProjection)
    IL_0042:  stloc.2
    IL_0043:  ldloc.2
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.Visitors.WhereArgumentsVisitor::session
    IL_004a:  call       class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Util.DetachedCriteriaExtensions::Adapt(class [NHibernate]NHibernate.Criterion.DetachedCriteria,
                                                                                                                       class [NHibernate]NHibernate.ISession)
    IL_004f:  ldc.i4.1
    IL_0050:  newobj     instance void NHibernate.Linq.Visitors.MemberNameVisitor::.ctor(class [NHibernate]NHibernate.ICriteria,
                                                                                         bool)
    IL_0055:  stloc.3
    IL_0056:  ldloc.3
    IL_0057:  ldarg.1
    IL_0058:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_005d:  pop
    IL_005e:  ldarg.2
    IL_005f:  call       object NHibernate.Linq.Util.QueryUtil::GetExpressionValue(class [System.Core]System.Linq.Expressions.Expression)
    IL_0064:  stloc.s    V_4
    IL_0066:  ldloc.3
    IL_0067:  callvirt   instance string NHibernate.Linq.Visitors.MemberNameVisitor::get_MemberName()
    IL_006c:  ldstr      "."
    IL_0071:  ldarg.1
    IL_0072:  callvirt   instance class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Expressions.CollectionAccessExpression::get_ElementExpression()
    IL_0077:  callvirt   instance class [NHibernate]NHibernate.Metadata.IClassMetadata NHibernate.Linq.Expressions.EntityExpression::get_MetaData()
    IL_007c:  callvirt   instance string [NHibernate]NHibernate.Metadata.IClassMetadata::get_IdentifierPropertyName()
    IL_0081:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_0086:  stloc.s    V_5
    IL_0088:  ldarg.1
    IL_0089:  callvirt   instance class NHibernate.Linq.Expressions.EntityExpression NHibernate.Linq.Expressions.CollectionAccessExpression::get_ElementExpression()
    IL_008e:  callvirt   instance class [NHibernate]NHibernate.Metadata.IClassMetadata NHibernate.Linq.Expressions.EntityExpression::get_MetaData()
    IL_0093:  ldloc.s    V_4
    IL_0095:  ldc.i4.0
    IL_0096:  callvirt   instance object [NHibernate]NHibernate.Metadata.IClassMetadata::GetIdentifier(object,
                                                                                                       valuetype [NHibernate]NHibernate.EntityMode)
    IL_009b:  stloc.s    V_6
    IL_009d:  ldloc.2
    IL_009e:  ldloc.s    V_5
    IL_00a0:  ldloc.s    V_6
    IL_00a2:  call       class [NHibernate]NHibernate.Criterion.SimpleExpression [NHibernate]NHibernate.Criterion.Restrictions::Eq(string,
                                                                                                                                   object)
    IL_00a7:  callvirt   instance class [NHibernate]NHibernate.Criterion.DetachedCriteria [NHibernate]NHibernate.Criterion.DetachedCriteria::Add(class [NHibernate]NHibernate.Criterion.ICriterion)
    IL_00ac:  pop
    IL_00ad:  ldloc.0
    IL_00ae:  callvirt   instance class [NHibernate]NHibernate.Metadata.IClassMetadata NHibernate.Linq.Expressions.EntityExpression::get_MetaData()
    IL_00b3:  callvirt   instance string [NHibernate]NHibernate.Metadata.IClassMetadata::get_IdentifierPropertyName()
    IL_00b8:  stloc.s    V_7
    IL_00ba:  ldloc.s    V_7
    IL_00bc:  ldloc.2
    IL_00bd:  call       class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Subqueries::PropertyIn(string,
                                                                                                                                          class [NHibernate]NHibernate.Criterion.DetachedCriteria)
    IL_00c2:  stloc.s    V_8
    IL_00c4:  br.s       IL_00c6

    IL_00c6:  ldloc.s    V_8
    IL_00c8:  ret
  } // end of method WhereArgumentsVisitor::GetCollectionContainsCriteria

  .method private hidebysig instance class [NHibernate]NHibernate.Criterion.ICriterion 
          GetCollectionContainsCriteria(class [System.Core]System.Linq.Expressions.Expression list,
                                        class [System.Core]System.Linq.Expressions.Expression containedExpr) cil managed
  {
    // Code size       58 (0x3a)
    .maxstack  2
    .locals init (class [mscorlib]System.Collections.ICollection V_0,
             class [NHibernate]NHibernate.Criterion.ICriterion V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  call       object NHibernate.Linq.Util.QueryUtil::GetExpressionValue(class [System.Core]System.Linq.Expressions.Expression)
    IL_0007:  isinst     [mscorlib]System.Collections.ICollection
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  ldnull
    IL_000f:  ceq
    IL_0011:  ldc.i4.0
    IL_0012:  ceq
    IL_0014:  stloc.2
    IL_0015:  ldloc.2
    IL_0016:  brtrue.s   IL_0023

    IL_0018:  ldstr      "Expression argument must be of type ICollection."
    IL_001d:  newobj     instance void [mscorlib]System.InvalidOperationException::.ctor(string)
    IL_0022:  throw

    IL_0023:  ldarg.0
    IL_0024:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.Visitors.WhereArgumentsVisitor::rootCriteria
    IL_0029:  ldarg.2
    IL_002a:  call       string NHibernate.Linq.Visitors.MemberNameVisitor::GetMemberName(class [NHibernate]NHibernate.ICriteria,
                                                                                          class [System.Core]System.Linq.Expressions.Expression)
    IL_002f:  ldloc.0
    IL_0030:  call       class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Restrictions::In(string,
                                                                                                                                    class [mscorlib]System.Collections.ICollection)
    IL_0035:  stloc.1
    IL_0036:  br.s       IL_0038

    IL_0038:  ldloc.1
    IL_0039:  ret
  } // end of method WhereArgumentsVisitor::GetCollectionContainsCriteria

  .method private hidebysig static class [NHibernate]NHibernate.Criterion.ICriterion 
          '<VisitBinaryCriterionExpression>b__0'(string n,
                                                 object v) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       23 (0x17)
    .maxstack  3
    .locals init (class [NHibernate]NHibernate.Criterion.ICriterion V_0)
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_000b

    IL_0003:  ldarg.0
    IL_0004:  call       class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Restrictions::IsNull(string)
    IL_0009:  br.s       IL_0012

    IL_000b:  ldarg.0
    IL_000c:  ldarg.1
    IL_000d:  call       class [NHibernate]NHibernate.Criterion.SimpleExpression [NHibernate]NHibernate.Criterion.Restrictions::Eq(string,
                                                                                                                                   object)
    IL_0012:  stloc.0
    IL_0013:  br.s       IL_0015

    IL_0015:  ldloc.0
    IL_0016:  ret
  } // end of method WhereArgumentsVisitor::'<VisitBinaryCriterionExpression>b__0'

  .method private hidebysig static class [NHibernate]NHibernate.Criterion.ICriterion 
          '<VisitBinaryCriterionExpression>b__1'(string n,
                                                 object v) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       28 (0x1c)
    .maxstack  3
    .locals init (class [NHibernate]NHibernate.Criterion.ICriterion V_0)
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_000b

    IL_0003:  ldarg.0
    IL_0004:  call       class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Restrictions::IsNotNull(string)
    IL_0009:  br.s       IL_0017

    IL_000b:  ldarg.0
    IL_000c:  ldarg.1
    IL_000d:  call       class [NHibernate]NHibernate.Criterion.SimpleExpression [NHibernate]NHibernate.Criterion.Restrictions::Eq(string,
                                                                                                                                   object)
    IL_0012:  call       class [NHibernate]NHibernate.Criterion.AbstractCriterion [NHibernate]NHibernate.Criterion.Restrictions::Not(class [NHibernate]NHibernate.Criterion.ICriterion)
    IL_0017:  stloc.0
    IL_0018:  br.s       IL_001a

    IL_001a:  ldloc.0
    IL_001b:  ret
  } // end of method WhereArgumentsVisitor::'<VisitBinaryCriterionExpression>b__1'

  .property instance class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion>
          CurrentCriterions()
  {
    .get instance class [mscorlib]System.Collections.Generic.IList`1<class [NHibernate]NHibernate.Criterion.ICriterion> NHibernate.Linq.Visitors.WhereArgumentsVisitor::get_CurrentCriterions()
  } // end of property WhereArgumentsVisitor::CurrentCriterions
} // end of class NHibernate.Linq.Visitors.WhereArgumentsVisitor

.class public auto ansi beforefieldinit NHibernate.Linq.CriteriaResultReader`1<T>
       extends [mscorlib]System.Object
       implements class [mscorlib]System.Collections.Generic.IEnumerable`1<!T>,
                  [mscorlib]System.Collections.IEnumerable
{
  .class auto ansi sealed nested private beforefieldinit '<GetEnumerator>d__0'<T>
         extends [mscorlib]System.Object
         implements class [mscorlib]System.Collections.Generic.IEnumerator`1<!T>,
                    [mscorlib]System.Collections.IEnumerator,
                    [mscorlib]System.IDisposable
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field private !T '<>2__current'
    .field private int32 '<>1__state'
    .field public class NHibernate.Linq.CriteriaResultReader`1<!T> '<>4__this'
    .field public object '<item>5__1'
    .field public class [mscorlib]System.Collections.IEnumerator '<>7__wrap2'
    .field public class [mscorlib]System.IDisposable '<>7__wrap3'
    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [mscorlib]System.Collections.IEnumerator::MoveNext
      // Code size       163 (0xa3)
      .maxstack  2
      .locals init (bool V_0,
               int32 V_1,
               bool V_2)
      .try
      {
        IL_0000:  ldarg.0
        IL_0001:  ldfld      int32 class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::'<>1__state'
        IL_0006:  stloc.1
        IL_0007:  ldloc.1
        IL_0008:  switch     ( 
                              IL_001d,
                              IL_001f,
                              IL_001b)
        IL_0019:  br.s       IL_001f

        IL_001b:  br.s       IL_0076

        IL_001d:  br.s       IL_0021

        IL_001f:  br.s       IL_0094

        IL_0021:  ldarg.0
        IL_0022:  ldc.i4.m1
        IL_0023:  stfld      int32 class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::'<>1__state'
        IL_0028:  nop
        IL_0029:  nop
        IL_002a:  ldarg.0
        IL_002b:  ldarg.0
        IL_002c:  ldfld      class NHibernate.Linq.CriteriaResultReader`1<!0> class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::'<>4__this'
        IL_0031:  callvirt   instance class [mscorlib]System.Collections.IList class NHibernate.Linq.CriteriaResultReader`1<!T>::List()
        IL_0036:  callvirt   instance class [mscorlib]System.Collections.IEnumerator [mscorlib]System.Collections.IEnumerable::GetEnumerator()
        IL_003b:  stfld      class [mscorlib]System.Collections.IEnumerator class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::'<>7__wrap2'
        IL_0040:  ldarg.0
        IL_0041:  ldc.i4.1
        IL_0042:  stfld      int32 class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::'<>1__state'
        IL_0047:  br.s       IL_007d

        IL_0049:  ldarg.0
        IL_004a:  ldarg.0
        IL_004b:  ldfld      class [mscorlib]System.Collections.IEnumerator class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::'<>7__wrap2'
        IL_0050:  callvirt   instance object [mscorlib]System.Collections.IEnumerator::get_Current()
        IL_0055:  stfld      object class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::'<item>5__1'
        IL_005a:  ldarg.0
        IL_005b:  ldarg.0
        IL_005c:  ldfld      object class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::'<item>5__1'
        IL_0061:  unbox.any  !T
        IL_0066:  stfld      !0 class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::'<>2__current'
        IL_006b:  ldarg.0
        IL_006c:  ldc.i4.2
        IL_006d:  stfld      int32 class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::'<>1__state'
        IL_0072:  ldc.i4.1
        IL_0073:  stloc.0
        IL_0074:  leave.s    IL_00a0

        IL_0076:  ldarg.0
        IL_0077:  ldc.i4.1
        IL_0078:  stfld      int32 class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::'<>1__state'
        IL_007d:  ldarg.0
        IL_007e:  ldfld      class [mscorlib]System.Collections.IEnumerator class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::'<>7__wrap2'
        IL_0083:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
        IL_0088:  stloc.2
        IL_0089:  ldloc.2
        IL_008a:  brtrue.s   IL_0049

        IL_008c:  ldarg.0
        IL_008d:  call       instance void class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::'<>m__Finally4'()
        IL_0092:  nop
        IL_0093:  nop
        IL_0094:  ldc.i4.0
        IL_0095:  stloc.0
        IL_0096:  leave.s    IL_00a0

      }  // end .try
      fault
      {
        IL_0098:  ldarg.0
        IL_0099:  call       instance void class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::System.IDisposable.Dispose()
        IL_009e:  nop
        IL_009f:  endfinally
      }  // end handler
      IL_00a0:  nop
      IL_00a1:  ldloc.0
      IL_00a2:  ret
    } // end of method '<GetEnumerator>d__0'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance !T  'System.Collections.Generic.IEnumerator<T>.get_Current'() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<!T>::get_Current()
      // Code size       11 (0xb)
      .maxstack  1
      .locals init (!T V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      !0 class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::'<>2__current'
      IL_0006:  stloc.0
      IL_0007:  br.s       IL_0009

      IL_0009:  ldloc.0
      IL_000a:  ret
    } // end of method '<GetEnumerator>d__0'::'System.Collections.Generic.IEnumerator<T>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [mscorlib]System.Collections.IEnumerator::Reset
      // Code size       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [mscorlib]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetEnumerator>d__0'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .override [mscorlib]System.IDisposable::Dispose
      // Code size       43 (0x2b)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  ldc.i4.1
      IL_0009:  sub
      IL_000a:  switch     ( 
                            IL_001b,
                            IL_0019)
      IL_0017:  br.s       IL_001d

      IL_0019:  br.s       IL_001f

      IL_001b:  br.s       IL_001f

      IL_001d:  br.s       IL_002a

      .try
      {
        IL_001f:  leave.s    IL_0029

      }  // end .try
      finally
      {
        IL_0021:  ldarg.0
        IL_0022:  call       instance void class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::'<>m__Finally4'()
        IL_0027:  nop
        IL_0028:  endfinally
      }  // end handler
      IL_0029:  nop
      IL_002a:  ret
    } // end of method '<GetEnumerator>d__0'::System.IDisposable.Dispose

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [mscorlib]System.Collections.IEnumerator::get_Current
      // Code size       16 (0x10)
      .maxstack  1
      .locals init (object V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      !0 class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::'<>2__current'
      IL_0006:  box        !T
      IL_000b:  stloc.0
      IL_000c:  br.s       IL_000e

      IL_000e:  ldloc.0
      IL_000f:  ret
    } // end of method '<GetEnumerator>d__0'::System.Collections.IEnumerator.get_Current

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(int32 '<>1__state') cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       14 (0xe)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldarg.1
      IL_0008:  stfld      int32 class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::'<>1__state'
      IL_000d:  ret
    } // end of method '<GetEnumerator>d__0'::.ctor

    .method private hidebysig instance void 
            '<>m__Finally4'() cil managed
    {
      // Code size       50 (0x32)
      .maxstack  2
      .locals init (bool V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4.m1
      IL_0002:  stfld      int32 class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::'<>1__state'
      IL_0007:  ldarg.0
      IL_0008:  ldarg.0
      IL_0009:  ldfld      class [mscorlib]System.Collections.IEnumerator class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::'<>7__wrap2'
      IL_000e:  isinst     [mscorlib]System.IDisposable
      IL_0013:  stfld      class [mscorlib]System.IDisposable class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::'<>7__wrap3'
      IL_0018:  ldarg.0
      IL_0019:  ldfld      class [mscorlib]System.IDisposable class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::'<>7__wrap3'
      IL_001e:  ldnull
      IL_001f:  ceq
      IL_0021:  stloc.0
      IL_0022:  ldloc.0
      IL_0023:  brtrue.s   IL_0031

      IL_0025:  ldarg.0
      IL_0026:  ldfld      class [mscorlib]System.IDisposable class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::'<>7__wrap3'
      IL_002b:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0030:  nop
      IL_0031:  ret
    } // end of method '<GetEnumerator>d__0'::'<>m__Finally4'

    .property instance !T 'System.Collections.Generic.IEnumerator<T>.Current'()
    {
      .get instance !T NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'::'System.Collections.Generic.IEnumerator<T>.get_Current'()
    } // end of property '<GetEnumerator>d__0'::'System.Collections.Generic.IEnumerator<T>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetEnumerator>d__0'::System.Collections.IEnumerator.Current
  } // end of class '<GetEnumerator>d__0'

  .field private initonly class [NHibernate]NHibernate.ICriteria _criteria
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [NHibernate]NHibernate.ICriteria criteria) cil managed
  {
    // Code size       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [NHibernate]NHibernate.ICriteria class NHibernate.Linq.CriteriaResultReader`1<!T>::_criteria
    IL_000f:  nop
    IL_0010:  ret
  } // end of method CriteriaResultReader`1::.ctor

  .method private hidebysig instance class [mscorlib]System.Collections.IList 
          List() cil managed
  {
    // Code size       17 (0x11)
    .maxstack  1
    .locals init (class [mscorlib]System.Collections.IList V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ICriteria class NHibernate.Linq.CriteriaResultReader`1<!T>::_criteria
    IL_0007:  callvirt   instance class [mscorlib]System.Collections.IList [NHibernate]NHibernate.ICriteria::List()
    IL_000c:  stloc.0
    IL_000d:  br.s       IL_000f

    IL_000f:  ldloc.0
    IL_0010:  ret
  } // end of method CriteriaResultReader`1::List

  .method public hidebysig newslot virtual final 
          instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!T> 
          GetEnumerator() cil managed
  {
    // Code size       20 (0x14)
    .maxstack  2
    .locals init (class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T> V_0,
             class [mscorlib]System.Collections.Generic.IEnumerator`1<!T> V_1)
    IL_0000:  ldc.i4.0
    IL_0001:  newobj     instance void class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::.ctor(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  stfld      class NHibernate.Linq.CriteriaResultReader`1<!0> class NHibernate.Linq.CriteriaResultReader`1/'<GetEnumerator>d__0'<!T>::'<>4__this'
    IL_000e:  ldloc.0
    IL_000f:  stloc.1
    IL_0010:  br.s       IL_0012

    IL_0012:  ldloc.1
    IL_0013:  ret
  } // end of method CriteriaResultReader`1::GetEnumerator

  .method private hidebysig newslot virtual final 
          instance class [mscorlib]System.Collections.IEnumerator 
          System.Collections.IEnumerable.GetEnumerator() cil managed
  {
    .override [mscorlib]System.Collections.IEnumerable::GetEnumerator
    // Code size       17 (0x11)
    .maxstack  1
    .locals init (class [mscorlib]System.Collections.IEnumerator V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [mscorlib]System.Collections.IList class NHibernate.Linq.CriteriaResultReader`1<!T>::List()
    IL_0007:  callvirt   instance class [mscorlib]System.Collections.IEnumerator [mscorlib]System.Collections.IEnumerable::GetEnumerator()
    IL_000c:  stloc.0
    IL_000d:  br.s       IL_000f

    IL_000f:  ldloc.0
    IL_0010:  ret
  } // end of method CriteriaResultReader`1::System.Collections.IEnumerable.GetEnumerator

} // end of class NHibernate.Linq.CriteriaResultReader`1

.class interface public abstract auto ansi NHibernate.Linq.IDbMethods
{
} // end of class NHibernate.Linq.IDbMethods

.class interface public abstract auto ansi NHibernate.Linq.INHibernateQueryable
{
  .method public hidebysig newslot specialname abstract virtual 
          instance class NHibernate.Linq.QueryOptions 
          get_QueryOptions() cil managed
  {
  } // end of method INHibernateQueryable::get_QueryOptions

  .property instance class NHibernate.Linq.QueryOptions
          QueryOptions()
  {
    .get instance class NHibernate.Linq.QueryOptions NHibernate.Linq.INHibernateQueryable::get_QueryOptions()
  } // end of property INHibernateQueryable::QueryOptions
} // end of class NHibernate.Linq.INHibernateQueryable

.class interface public abstract auto ansi NHibernate.Linq.INHibernateQueryable`1<T>
       implements NHibernate.Linq.INHibernateQueryable,
                  class [System.Core]System.Linq.IOrderedQueryable`1<!T>,
                  class [System.Core]System.Linq.IQueryable`1<!T>,
                  class [mscorlib]System.Collections.Generic.IEnumerable`1<!T>,
                  [System.Core]System.Linq.IOrderedQueryable,
                  [System.Core]System.Linq.IQueryable,
                  [mscorlib]System.Collections.IEnumerable
{
  .method public hidebysig newslot abstract virtual 
          instance class [System.Core]System.Linq.IQueryable`1<!T> 
          Expand(string path) cil managed
  {
  } // end of method INHibernateQueryable`1::Expand

} // end of class NHibernate.Linq.INHibernateQueryable`1

.class public abstract auto ansi beforefieldinit NHibernate.Linq.NHibernateContext
       extends [mscorlib]System.Object
       implements [mscorlib]System.IDisposable,
                  [mscorlib]System.ICloneable,
                  [System.Data.Services]System.Data.Services.IUpdatable,
                  [System.Data.Services]System.Data.Services.IExpandProvider
{
  .field public initonly class NHibernate.Linq.IDbMethods Methods
  .field private class [NHibernate]NHibernate.ISession session
  .field private class [mscorlib]System.Collections.Generic.List`1<object> _updateCache
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  stfld      class [mscorlib]System.Collections.Generic.List`1<object> NHibernate.Linq.NHibernateContext::_updateCache
    IL_0007:  ldarg.0
    IL_0008:  call       instance void [mscorlib]System.Object::.ctor()
    IL_000d:  nop
    IL_000e:  nop
    IL_000f:  nop
    IL_0010:  ret
  } // end of method NHibernateContext::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [NHibernate]NHibernate.ISession session) cil managed
  {
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  stfld      class [mscorlib]System.Collections.Generic.List`1<object> NHibernate.Linq.NHibernateContext::_updateCache
    IL_0007:  ldarg.0
    IL_0008:  call       instance void [mscorlib]System.Object::.ctor()
    IL_000d:  nop
    IL_000e:  nop
    IL_000f:  ldarg.0
    IL_0010:  ldarg.1
    IL_0011:  stfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateContext::session
    IL_0016:  nop
    IL_0017:  ret
  } // end of method NHibernateContext::.ctor

  .method public hidebysig newslot specialname virtual 
          instance class [NHibernate]NHibernate.ISession 
          get_Session() cil managed
  {
    // Code size       42 (0x2a)
    .maxstack  2
    .locals init (class [NHibernate]NHibernate.ISession V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateContext::session
    IL_0007:  ldnull
    IL_0008:  ceq
    IL_000a:  ldc.i4.0
    IL_000b:  ceq
    IL_000d:  stloc.1
    IL_000e:  ldloc.1
    IL_000f:  brtrue.s   IL_001f

    IL_0011:  nop
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  callvirt   instance class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateContext::ProvideSession()
    IL_0019:  stfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateContext::session
    IL_001e:  nop
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateContext::session
    IL_0025:  stloc.0
    IL_0026:  br.s       IL_0028

    IL_0028:  ldloc.0
    IL_0029:  ret
  } // end of method NHibernateContext::get_Session

  .method family hidebysig newslot virtual 
          instance class [NHibernate]NHibernate.ISession 
          ProvideSession() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "If NHibernateContext is constructed with the empty"
    + " constructor, inheritor is required to override ProvideSession to suppl"
    + "y Session."
    IL_0006:  newobj     instance void [mscorlib]System.NotImplementedException::.ctor(string)
    IL_000b:  throw
  } // end of method NHibernateContext::ProvideSession

  .method public hidebysig newslot virtual 
          instance object  Clone() cil managed
  {
    // Code size       62 (0x3e)
    .maxstack  4
    .locals init (object V_0,
             bool V_1,
             object[] V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateContext::session
    IL_0007:  ldnull
    IL_0008:  ceq
    IL_000a:  ldc.i4.0
    IL_000b:  ceq
    IL_000d:  stloc.1
    IL_000e:  ldloc.1
    IL_000f:  brtrue.s   IL_001d

    IL_0011:  nop
    IL_0012:  ldstr      "session"
    IL_0017:  newobj     instance void [mscorlib]System.ArgumentNullException::.ctor(string)
    IL_001c:  throw

    IL_001d:  ldarg.0
    IL_001e:  call       instance class [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_0023:  ldc.i4.1
    IL_0024:  newarr     [mscorlib]System.Object
    IL_0029:  stloc.2
    IL_002a:  ldloc.2
    IL_002b:  ldc.i4.0
    IL_002c:  ldarg.0
    IL_002d:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateContext::session
    IL_0032:  stelem.ref
    IL_0033:  ldloc.2
    IL_0034:  call       object [mscorlib]System.Activator::CreateInstance(class [mscorlib]System.Type,
                                                                           object[])
    IL_0039:  stloc.0
    IL_003a:  br.s       IL_003c

    IL_003c:  ldloc.0
    IL_003d:  ret
  } // end of method NHibernateContext::Clone

  .method public hidebysig newslot virtual 
          instance void  Dispose() cil managed
  {
    // Code size       36 (0x24)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateContext::session
    IL_0007:  ldnull
    IL_0008:  ceq
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  brtrue.s   IL_0023

    IL_000e:  nop
    IL_000f:  ldarg.0
    IL_0010:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateContext::session
    IL_0015:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
    IL_001a:  nop
    IL_001b:  ldarg.0
    IL_001c:  ldnull
    IL_001d:  stfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateContext::session
    IL_0022:  nop
    IL_0023:  ret
  } // end of method NHibernateContext::Dispose

  .method private hidebysig specialname instance class [mscorlib]System.Collections.Generic.List`1<object> 
          get_UpdateCache() cil managed
  {
    // Code size       41 (0x29)
    .maxstack  2
    .locals init (class [mscorlib]System.Collections.Generic.List`1<object> V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [mscorlib]System.Collections.Generic.List`1<object> NHibernate.Linq.NHibernateContext::_updateCache
    IL_0007:  ldnull
    IL_0008:  ceq
    IL_000a:  ldc.i4.0
    IL_000b:  ceq
    IL_000d:  stloc.1
    IL_000e:  ldloc.1
    IL_000f:  brtrue.s   IL_001e

    IL_0011:  nop
    IL_0012:  ldarg.0
    IL_0013:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<object>::.ctor()
    IL_0018:  stfld      class [mscorlib]System.Collections.Generic.List`1<object> NHibernate.Linq.NHibernateContext::_updateCache
    IL_001d:  nop
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class [mscorlib]System.Collections.Generic.List`1<object> NHibernate.Linq.NHibernateContext::_updateCache
    IL_0024:  stloc.0
    IL_0025:  br.s       IL_0027

    IL_0027:  ldloc.0
    IL_0028:  ret
  } // end of method NHibernateContext::get_UpdateCache

  .method private hidebysig newslot virtual final 
          instance void  System.Data.Services.IUpdatable.AddReferenceToCollection(object targetResource,
                                                                                  string propertyName,
                                                                                  object resourceToBeAdded) cil managed
  {
    .override [System.Data.Services]System.Data.Services.IUpdatable::AddReferenceToCollection
    // Code size       174 (0xae)
    .maxstack  5
    .locals init (class [NHibernate]NHibernate.Metadata.IClassMetadata V_0,
             object V_1,
             class [mscorlib]System.Reflection.MethodInfo V_2,
             bool V_3,
             object[] V_4)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateContext::session
    IL_0007:  callvirt   instance class [NHibernate]NHibernate.ISessionFactory [NHibernate]NHibernate.ISession::get_SessionFactory()
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_0012:  callvirt   instance string [mscorlib]System.Type::get_FullName()
    IL_0017:  callvirt   instance class [NHibernate]NHibernate.Metadata.IClassMetadata [NHibernate]NHibernate.ISessionFactory::GetClassMetadata(string)
    IL_001c:  stloc.0
    IL_001d:  ldloc.0
    IL_001e:  ldnull
    IL_001f:  ceq
    IL_0021:  ldc.i4.0
    IL_0022:  ceq
    IL_0024:  stloc.3
    IL_0025:  ldloc.3
    IL_0026:  brtrue.s   IL_0034

    IL_0028:  nop
    IL_0029:  ldstr      "Type not recognized as a valid type for this Context"
    IL_002e:  newobj     instance void [System.Data.Services]System.Data.Services.DataServiceException::.ctor(string)
    IL_0033:  throw

    IL_0034:  ldloc.0
    IL_0035:  ldarg.1
    IL_0036:  ldarg.2
    IL_0037:  ldc.i4.0
    IL_0038:  callvirt   instance object [NHibernate]NHibernate.Metadata.IClassMetadata::GetPropertyValue(object,
                                                                                                          string,
                                                                                                          valuetype [NHibernate]NHibernate.EntityMode)
    IL_003d:  stloc.1
    IL_003e:  ldloc.1
    IL_003f:  isinst     [mscorlib]System.Collections.IList
    IL_0044:  ldnull
    IL_0045:  cgt.un
    IL_0047:  ldc.i4.0
    IL_0048:  ceq
    IL_004a:  stloc.3
    IL_004b:  ldloc.3
    IL_004c:  brtrue.s   IL_005f

    IL_004e:  nop
    IL_004f:  ldloc.1
    IL_0050:  castclass  [mscorlib]System.Collections.IList
    IL_0055:  ldarg.3
    IL_0056:  callvirt   instance int32 [mscorlib]System.Collections.IList::Add(object)
    IL_005b:  pop
    IL_005c:  nop
    IL_005d:  br.s       IL_00ad

    IL_005f:  nop
    IL_0060:  ldloc.1
    IL_0061:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_0066:  ldstr      "Add"
    IL_006b:  ldc.i4.s   20
    IL_006d:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [mscorlib]System.Type::GetMethod(string,
                                                                                                                valuetype [mscorlib]System.Reflection.BindingFlags)
    IL_0072:  stloc.2
    IL_0073:  ldloc.2
    IL_0074:  ldnull
    IL_0075:  ceq
    IL_0077:  ldc.i4.0
    IL_0078:  ceq
    IL_007a:  stloc.3
    IL_007b:  ldloc.3
    IL_007c:  brtrue.s   IL_0095

    IL_007e:  nop
    IL_007f:  ldstr      "Could not determine the collection type of the "
    IL_0084:  ldarg.2
    IL_0085:  ldstr      " property."
    IL_008a:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_008f:  newobj     instance void [System.Data.Services]System.Data.Services.DataServiceException::.ctor(string)
    IL_0094:  throw

    IL_0095:  ldloc.2
    IL_0096:  ldloc.1
    IL_0097:  ldc.i4.1
    IL_0098:  newarr     [mscorlib]System.Object
    IL_009d:  stloc.s    V_4
    IL_009f:  ldloc.s    V_4
    IL_00a1:  ldc.i4.0
    IL_00a2:  ldarg.3
    IL_00a3:  stelem.ref
    IL_00a4:  ldloc.s    V_4
    IL_00a6:  callvirt   instance object [mscorlib]System.Reflection.MethodBase::Invoke(object,
                                                                                        object[])
    IL_00ab:  pop
    IL_00ac:  nop
    IL_00ad:  ret
  } // end of method NHibernateContext::System.Data.Services.IUpdatable.AddReferenceToCollection

  .method private hidebysig newslot virtual final 
          instance void  System.Data.Services.IUpdatable.ClearChanges() cil managed
  {
    .override [System.Data.Services]System.Data.Services.IUpdatable::ClearChanges
    // Code size       26 (0x1a)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [mscorlib]System.Collections.Generic.List`1<object> NHibernate.Linq.NHibernateContext::get_UpdateCache()
    IL_0007:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<object>::Clear()
    IL_000c:  nop
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateContext::session
    IL_0013:  callvirt   instance void [NHibernate]NHibernate.ISession::Clear()
    IL_0018:  nop
    IL_0019:  ret
  } // end of method NHibernateContext::System.Data.Services.IUpdatable.ClearChanges

  .method private hidebysig newslot virtual final 
          instance object  System.Data.Services.IUpdatable.CreateResource(string containerName,
                                                                          string fullTypeName) cil managed
  {
    .override [System.Data.Services]System.Data.Services.IUpdatable::CreateResource
    // Code size       47 (0x2f)
    .maxstack  3
    .locals init (class [NHibernate]NHibernate.Metadata.IClassMetadata V_0,
             object V_1,
             object V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateContext::session
    IL_0007:  callvirt   instance class [NHibernate]NHibernate.ISessionFactory [NHibernate]NHibernate.ISession::get_SessionFactory()
    IL_000c:  ldarg.2
    IL_000d:  callvirt   instance class [NHibernate]NHibernate.Metadata.IClassMetadata [NHibernate]NHibernate.ISessionFactory::GetClassMetadata(string)
    IL_0012:  stloc.0
    IL_0013:  ldloc.0
    IL_0014:  ldnull
    IL_0015:  ldc.i4.0
    IL_0016:  callvirt   instance object [NHibernate]NHibernate.Metadata.IClassMetadata::Instantiate(object,
                                                                                                     valuetype [NHibernate]NHibernate.EntityMode)
    IL_001b:  stloc.1
    IL_001c:  ldarg.0
    IL_001d:  call       instance class [mscorlib]System.Collections.Generic.List`1<object> NHibernate.Linq.NHibernateContext::get_UpdateCache()
    IL_0022:  ldloc.1
    IL_0023:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<object>::Add(!0)
    IL_0028:  nop
    IL_0029:  ldloc.1
    IL_002a:  stloc.2
    IL_002b:  br.s       IL_002d

    IL_002d:  ldloc.2
    IL_002e:  ret
  } // end of method NHibernateContext::System.Data.Services.IUpdatable.CreateResource

  .method private hidebysig newslot virtual final 
          instance void  System.Data.Services.IUpdatable.DeleteResource(object targetResource) cil managed
  {
    .override [System.Data.Services]System.Data.Services.IUpdatable::DeleteResource
    // Code size       81 (0x51)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [mscorlib]System.Collections.Generic.List`1<object> NHibernate.Linq.NHibernateContext::get_UpdateCache()
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<object>::Contains(!0)
    IL_000d:  ldc.i4.0
    IL_000e:  ceq
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  brtrue.s   IL_0030

    IL_0014:  nop
    IL_0015:  ldarg.0
    IL_0016:  call       instance class [mscorlib]System.Collections.Generic.List`1<object> NHibernate.Linq.NHibernateContext::get_UpdateCache()
    IL_001b:  ldarg.1
    IL_001c:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<object>::Remove(!0)
    IL_0021:  pop
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateContext::session
    IL_0028:  ldarg.1
    IL_0029:  callvirt   instance object [NHibernate]NHibernate.ISession::Save(object)
    IL_002e:  pop
    IL_002f:  nop
    IL_0030:  ldarg.0
    IL_0031:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateContext::session
    IL_0036:  ldarg.1
    IL_0037:  callvirt   instance bool [NHibernate]NHibernate.ISession::Contains(object)
    IL_003c:  ldc.i4.0
    IL_003d:  ceq
    IL_003f:  stloc.0
    IL_0040:  ldloc.0
    IL_0041:  brtrue.s   IL_0050

    IL_0043:  ldarg.0
    IL_0044:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateContext::session
    IL_0049:  ldarg.1
    IL_004a:  callvirt   instance void [NHibernate]NHibernate.ISession::Delete(object)
    IL_004f:  nop
    IL_0050:  ret
  } // end of method NHibernateContext::System.Data.Services.IUpdatable.DeleteResource

  .method private hidebysig newslot virtual final 
          instance object  System.Data.Services.IUpdatable.GetResource(class [System.Core]System.Linq.IQueryable query,
                                                                       string fullTypeName) cil managed
  {
    .override [System.Data.Services]System.Data.Services.IUpdatable::GetResource
    // Code size       141 (0x8d)
    .maxstack  2
    .locals init (class [mscorlib]System.Collections.IEnumerable V_0,
             object V_1,
             object V_2,
             object V_3,
             class [mscorlib]System.Collections.IEnumerator V_4,
             bool V_5,
             class [mscorlib]System.IDisposable V_6)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  stloc.0
    IL_0003:  ldnull
    IL_0004:  stloc.1
    IL_0005:  nop
    IL_0006:  ldloc.0
    IL_0007:  callvirt   instance class [mscorlib]System.Collections.IEnumerator [mscorlib]System.Collections.IEnumerable::GetEnumerator()
    IL_000c:  stloc.s    V_4
    .try
    {
      IL_000e:  br.s       IL_0028

      IL_0010:  ldloc.s    V_4
      IL_0012:  callvirt   instance object [mscorlib]System.Collections.IEnumerator::get_Current()
      IL_0017:  stloc.2
      IL_0018:  nop
      IL_0019:  ldloc.1
      IL_001a:  ldnull
      IL_001b:  ceq
      IL_001d:  stloc.s    V_5
      IL_001f:  ldloc.s    V_5
      IL_0021:  brtrue.s   IL_0025

      IL_0023:  br.s       IL_0035

      IL_0025:  ldloc.2
      IL_0026:  stloc.1
      IL_0027:  nop
      IL_0028:  ldloc.s    V_4
      IL_002a:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_002f:  stloc.s    V_5
      IL_0031:  ldloc.s    V_5
      IL_0033:  brtrue.s   IL_0010

      IL_0035:  leave.s    IL_0054

    }  // end .try
    finally
    {
      IL_0037:  ldloc.s    V_4
      IL_0039:  isinst     [mscorlib]System.IDisposable
      IL_003e:  stloc.s    V_6
      IL_0040:  ldloc.s    V_6
      IL_0042:  ldnull
      IL_0043:  ceq
      IL_0045:  stloc.s    V_5
      IL_0047:  ldloc.s    V_5
      IL_0049:  brtrue.s   IL_0053

      IL_004b:  ldloc.s    V_6
      IL_004d:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0052:  nop
      IL_0053:  endfinally
    }  // end handler
    IL_0054:  nop
    IL_0055:  ldarg.2
    IL_0056:  ldnull
    IL_0057:  ceq
    IL_0059:  stloc.s    V_5
    IL_005b:  ldloc.s    V_5
    IL_005d:  brtrue.s   IL_0087

    IL_005f:  nop
    IL_0060:  ldarg.2
    IL_0061:  ldloc.1
    IL_0062:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_0067:  callvirt   instance string [mscorlib]System.Type::get_FullName()
    IL_006c:  call       bool [mscorlib]System.String::op_Inequality(string,
                                                                     string)
    IL_0071:  ldc.i4.0
    IL_0072:  ceq
    IL_0074:  stloc.s    V_5
    IL_0076:  ldloc.s    V_5
    IL_0078:  brtrue.s   IL_0086

    IL_007a:  nop
    IL_007b:  ldstr      "Incorrect Type Returned"
    IL_0080:  newobj     instance void [System.Data.Services]System.Data.Services.DataServiceException::.ctor(string)
    IL_0085:  throw

    IL_0086:  nop
    IL_0087:  ldloc.1
    IL_0088:  stloc.3
    IL_0089:  br.s       IL_008b

    IL_008b:  ldloc.3
    IL_008c:  ret
  } // end of method NHibernateContext::System.Data.Services.IUpdatable.GetResource

  .method private hidebysig newslot virtual final 
          instance object  System.Data.Services.IUpdatable.GetValue(object targetResource,
                                                                    string propertyName) cil managed
  {
    .override [System.Data.Services]System.Data.Services.IUpdatable::GetValue
    // Code size       98 (0x62)
    .maxstack  4
    .locals init (class [NHibernate]NHibernate.Metadata.IClassMetadata V_0,
             object V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateContext::session
    IL_0007:  callvirt   instance class [NHibernate]NHibernate.ISessionFactory [NHibernate]NHibernate.ISession::get_SessionFactory()
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_0012:  callvirt   instance string [mscorlib]System.Type::get_FullName()
    IL_0017:  callvirt   instance class [NHibernate]NHibernate.Metadata.IClassMetadata [NHibernate]NHibernate.ISessionFactory::GetClassMetadata(string)
    IL_001c:  stloc.0
    IL_001d:  ldloc.0
    IL_001e:  ldnull
    IL_001f:  ceq
    IL_0021:  ldc.i4.0
    IL_0022:  ceq
    IL_0024:  stloc.2
    IL_0025:  ldloc.2
    IL_0026:  brtrue.s   IL_0034

    IL_0028:  nop
    IL_0029:  ldstr      "Type not recognized as a valid type for this Context"
    IL_002e:  newobj     instance void [System.Data.Services]System.Data.Services.DataServiceException::.ctor(string)
    IL_0033:  throw

    IL_0034:  ldloc.0
    IL_0035:  callvirt   instance string [NHibernate]NHibernate.Metadata.IClassMetadata::get_IdentifierPropertyName()
    IL_003a:  ldarg.2
    IL_003b:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_0040:  ldc.i4.0
    IL_0041:  ceq
    IL_0043:  stloc.2
    IL_0044:  ldloc.2
    IL_0045:  brtrue.s   IL_0053

    IL_0047:  nop
    IL_0048:  ldloc.0
    IL_0049:  ldarg.1
    IL_004a:  ldc.i4.0
    IL_004b:  callvirt   instance object [NHibernate]NHibernate.Metadata.IClassMetadata::GetIdentifier(object,
                                                                                                       valuetype [NHibernate]NHibernate.EntityMode)
    IL_0050:  stloc.1
    IL_0051:  br.s       IL_0060

    IL_0053:  nop
    IL_0054:  ldloc.0
    IL_0055:  ldarg.1
    IL_0056:  ldarg.2
    IL_0057:  ldc.i4.0
    IL_0058:  callvirt   instance object [NHibernate]NHibernate.Metadata.IClassMetadata::GetPropertyValue(object,
                                                                                                          string,
                                                                                                          valuetype [NHibernate]NHibernate.EntityMode)
    IL_005d:  stloc.1
    IL_005e:  br.s       IL_0060

    IL_0060:  ldloc.1
    IL_0061:  ret
  } // end of method NHibernateContext::System.Data.Services.IUpdatable.GetValue

  .method private hidebysig newslot virtual final 
          instance void  System.Data.Services.IUpdatable.RemoveReferenceFromCollection(object targetResource,
                                                                                       string propertyName,
                                                                                       object resourceToBeRemoved) cil managed
  {
    .override [System.Data.Services]System.Data.Services.IUpdatable::RemoveReferenceFromCollection
    // Code size       174 (0xae)
    .maxstack  5
    .locals init (class [NHibernate]NHibernate.Metadata.IClassMetadata V_0,
             object V_1,
             class [mscorlib]System.Reflection.MethodInfo V_2,
             bool V_3,
             object[] V_4)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateContext::session
    IL_0007:  callvirt   instance class [NHibernate]NHibernate.ISessionFactory [NHibernate]NHibernate.ISession::get_SessionFactory()
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_0012:  callvirt   instance string [mscorlib]System.Type::get_FullName()
    IL_0017:  callvirt   instance class [NHibernate]NHibernate.Metadata.IClassMetadata [NHibernate]NHibernate.ISessionFactory::GetClassMetadata(string)
    IL_001c:  stloc.0
    IL_001d:  ldloc.0
    IL_001e:  ldnull
    IL_001f:  ceq
    IL_0021:  ldc.i4.0
    IL_0022:  ceq
    IL_0024:  stloc.3
    IL_0025:  ldloc.3
    IL_0026:  brtrue.s   IL_0034

    IL_0028:  nop
    IL_0029:  ldstr      "Type not recognized as a valid type for this Context"
    IL_002e:  newobj     instance void [System.Data.Services]System.Data.Services.DataServiceException::.ctor(string)
    IL_0033:  throw

    IL_0034:  ldloc.0
    IL_0035:  ldarg.1
    IL_0036:  ldarg.2
    IL_0037:  ldc.i4.0
    IL_0038:  callvirt   instance object [NHibernate]NHibernate.Metadata.IClassMetadata::GetPropertyValue(object,
                                                                                                          string,
                                                                                                          valuetype [NHibernate]NHibernate.EntityMode)
    IL_003d:  stloc.1
    IL_003e:  ldloc.1
    IL_003f:  isinst     [mscorlib]System.Collections.IList
    IL_0044:  ldnull
    IL_0045:  cgt.un
    IL_0047:  ldc.i4.0
    IL_0048:  ceq
    IL_004a:  stloc.3
    IL_004b:  ldloc.3
    IL_004c:  brtrue.s   IL_005f

    IL_004e:  nop
    IL_004f:  ldloc.1
    IL_0050:  castclass  [mscorlib]System.Collections.IList
    IL_0055:  ldarg.3
    IL_0056:  callvirt   instance void [mscorlib]System.Collections.IList::Remove(object)
    IL_005b:  nop
    IL_005c:  nop
    IL_005d:  br.s       IL_00ad

    IL_005f:  nop
    IL_0060:  ldloc.1
    IL_0061:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_0066:  ldstr      "Remove"
    IL_006b:  ldc.i4.s   20
    IL_006d:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [mscorlib]System.Type::GetMethod(string,
                                                                                                                valuetype [mscorlib]System.Reflection.BindingFlags)
    IL_0072:  stloc.2
    IL_0073:  ldloc.2
    IL_0074:  ldnull
    IL_0075:  ceq
    IL_0077:  ldc.i4.0
    IL_0078:  ceq
    IL_007a:  stloc.3
    IL_007b:  ldloc.3
    IL_007c:  brtrue.s   IL_0095

    IL_007e:  nop
    IL_007f:  ldstr      "Could not determine the collection type of the "
    IL_0084:  ldarg.2
    IL_0085:  ldstr      " property."
    IL_008a:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_008f:  newobj     instance void [System.Data.Services]System.Data.Services.DataServiceException::.ctor(string)
    IL_0094:  throw

    IL_0095:  ldloc.2
    IL_0096:  ldloc.1
    IL_0097:  ldc.i4.1
    IL_0098:  newarr     [mscorlib]System.Object
    IL_009d:  stloc.s    V_4
    IL_009f:  ldloc.s    V_4
    IL_00a1:  ldc.i4.0
    IL_00a2:  ldarg.3
    IL_00a3:  stelem.ref
    IL_00a4:  ldloc.s    V_4
    IL_00a6:  callvirt   instance object [mscorlib]System.Reflection.MethodBase::Invoke(object,
                                                                                        object[])
    IL_00ab:  pop
    IL_00ac:  nop
    IL_00ad:  ret
  } // end of method NHibernateContext::System.Data.Services.IUpdatable.RemoveReferenceFromCollection

  .method private hidebysig newslot virtual final 
          instance object  System.Data.Services.IUpdatable.ResetResource(object resource) cil managed
  {
    .override [System.Data.Services]System.Data.Services.IUpdatable::ResetResource
    // Code size       134 (0x86)
    .maxstack  4
    .locals init (class [System.Data.Services]System.Data.Services.IUpdatable V_0,
             class [NHibernate]NHibernate.Metadata.IClassMetadata V_1,
             object V_2,
             int32 V_3,
             class [NHibernate]NHibernate.Type.IType V_4,
             string V_5,
             object V_6,
             object V_7,
             bool V_8)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  stloc.0
    IL_0003:  ldarg.0
    IL_0004:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateContext::session
    IL_0009:  callvirt   instance class [NHibernate]NHibernate.ISessionFactory [NHibernate]NHibernate.ISession::get_SessionFactory()
    IL_000e:  ldarg.1
    IL_000f:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_0014:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0019:  callvirt   instance class [NHibernate]NHibernate.Metadata.IClassMetadata [NHibernate]NHibernate.ISessionFactory::GetClassMetadata(string)
    IL_001e:  stloc.1
    IL_001f:  ldloc.1
    IL_0020:  ldnull
    IL_0021:  ldc.i4.0
    IL_0022:  callvirt   instance object [NHibernate]NHibernate.Metadata.IClassMetadata::Instantiate(object,
                                                                                                     valuetype [NHibernate]NHibernate.EntityMode)
    IL_0027:  stloc.2
    IL_0028:  ldc.i4.0
    IL_0029:  stloc.3
    IL_002a:  br.s       IL_006d

    IL_002c:  nop
    IL_002d:  ldloc.1
    IL_002e:  callvirt   instance class [NHibernate]NHibernate.Type.IType[] [NHibernate]NHibernate.Metadata.IClassMetadata::get_PropertyTypes()
    IL_0033:  ldloc.3
    IL_0034:  ldelem.ref
    IL_0035:  stloc.s    V_4
    IL_0037:  ldloc.1
    IL_0038:  callvirt   instance string[] [NHibernate]NHibernate.Metadata.IClassMetadata::get_PropertyNames()
    IL_003d:  ldloc.3
    IL_003e:  ldelem.ref
    IL_003f:  stloc.s    V_5
    IL_0041:  ldloc.s    V_4
    IL_0043:  callvirt   instance bool [NHibernate]NHibernate.Type.IType::get_IsEntityType()
    IL_0048:  stloc.s    V_8
    IL_004a:  ldloc.s    V_8
    IL_004c:  brtrue.s   IL_0068

    IL_004e:  nop
    IL_004f:  ldloc.1
    IL_0050:  ldloc.2
    IL_0051:  ldloc.s    V_5
    IL_0053:  ldc.i4.0
    IL_0054:  callvirt   instance object [NHibernate]NHibernate.Metadata.IClassMetadata::GetPropertyValue(object,
                                                                                                          string,
                                                                                                          valuetype [NHibernate]NHibernate.EntityMode)
    IL_0059:  stloc.s    V_6
    IL_005b:  ldloc.0
    IL_005c:  ldarg.1
    IL_005d:  ldloc.s    V_5
    IL_005f:  ldloc.s    V_6
    IL_0061:  callvirt   instance void [System.Data.Services]System.Data.Services.IUpdatable::SetValue(object,
                                                                                                       string,
                                                                                                       object)
    IL_0066:  nop
    IL_0067:  nop
    IL_0068:  nop
    IL_0069:  ldloc.3
    IL_006a:  ldc.i4.1
    IL_006b:  add
    IL_006c:  stloc.3
    IL_006d:  ldloc.3
    IL_006e:  ldloc.1
    IL_006f:  callvirt   instance string[] [NHibernate]NHibernate.Metadata.IClassMetadata::get_PropertyNames()
    IL_0074:  ldlen
    IL_0075:  conv.i4
    IL_0076:  clt
    IL_0078:  stloc.s    V_8
    IL_007a:  ldloc.s    V_8
    IL_007c:  brtrue.s   IL_002c

    IL_007e:  ldarg.1
    IL_007f:  stloc.s    V_7
    IL_0081:  br.s       IL_0083

    IL_0083:  ldloc.s    V_7
    IL_0085:  ret
  } // end of method NHibernateContext::System.Data.Services.IUpdatable.ResetResource

  .method private hidebysig newslot virtual final 
          instance object  System.Data.Services.IUpdatable.ResolveResource(object resource) cil managed
  {
    .override [System.Data.Services]System.Data.Services.IUpdatable::ResolveResource
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (object V_0)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method NHibernateContext::System.Data.Services.IUpdatable.ResolveResource

  .method private hidebysig newslot virtual final 
          instance void  System.Data.Services.IUpdatable.SaveChanges() cil managed
  {
    .override [System.Data.Services]System.Data.Services.IUpdatable::SaveChanges
    // Code size       141 (0x8d)
    .maxstack  4
    .locals init (class [NHibernate]NHibernate.ITransaction V_0,
             class [mscorlib]System.Exception V_1,
             class [mscorlib]System.Action`1<object> V_2,
             bool V_3)
    IL_0000:  ldnull
    IL_0001:  stloc.2
    IL_0002:  nop
    IL_0003:  ldarg.0
    IL_0004:  callvirt   instance class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateContext::get_Session()
    IL_0009:  callvirt   instance class [NHibernate]NHibernate.ITransaction [NHibernate]NHibernate.ISession::BeginTransaction()
    IL_000e:  stloc.0
    .try
    {
      IL_000f:  nop
      .try
      {
        IL_0010:  nop
        IL_0011:  ldarg.0
        IL_0012:  ldfld      class [mscorlib]System.Collections.Generic.List`1<object> NHibernate.Linq.NHibernateContext::_updateCache
        IL_0017:  ldnull
        IL_0018:  ceq
        IL_001a:  stloc.3
        IL_001b:  ldloc.3
        IL_001c:  brtrue.s   IL_004b

        IL_001e:  nop
        IL_001f:  ldarg.0
        IL_0020:  ldfld      class [mscorlib]System.Collections.Generic.List`1<object> NHibernate.Linq.NHibernateContext::_updateCache
        IL_0025:  ldloc.2
        IL_0026:  brtrue.s   IL_0037

        IL_0028:  ldarg.0
        IL_0029:  ldftn      instance void NHibernate.Linq.NHibernateContext::'<System.Data.Services.IUpdatable.SaveChanges>b__0'(object)
        IL_002f:  newobj     instance void class [mscorlib]System.Action`1<object>::.ctor(object,
                                                                                          native int)
        IL_0034:  stloc.2
        IL_0035:  br.s       IL_0037

        IL_0037:  ldloc.2
        IL_0038:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<object>::ForEach(class [mscorlib]System.Action`1<!0>)
        IL_003d:  nop
        IL_003e:  ldarg.0
        IL_003f:  ldfld      class [mscorlib]System.Collections.Generic.List`1<object> NHibernate.Linq.NHibernateContext::_updateCache
        IL_0044:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<object>::Clear()
        IL_0049:  nop
        IL_004a:  nop
        IL_004b:  ldarg.0
        IL_004c:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateContext::session
        IL_0051:  callvirt   instance void [NHibernate]NHibernate.ISession::Flush()
        IL_0056:  nop
        IL_0057:  ldloc.0
        IL_0058:  callvirt   instance void [NHibernate]NHibernate.ITransaction::Commit()
        IL_005d:  nop
        IL_005e:  nop
        IL_005f:  leave.s    IL_0076

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_0061:  stloc.1
        IL_0062:  nop
        IL_0063:  ldloc.0
        IL_0064:  callvirt   instance void [NHibernate]NHibernate.ITransaction::Rollback()
        IL_0069:  nop
        IL_006a:  ldstr      "Failed to save changes.  See inner exception for d"
        + "etails"
        IL_006f:  ldloc.1
        IL_0070:  newobj     instance void [System.Data.Services]System.Data.Services.DataServiceException::.ctor(string,
                                                                                                                  class [mscorlib]System.Exception)
        IL_0075:  throw

      }  // end handler
      IL_0076:  nop
      IL_0077:  nop
      IL_0078:  leave.s    IL_008a

    }  // end .try
    finally
    {
      IL_007a:  ldloc.0
      IL_007b:  ldnull
      IL_007c:  ceq
      IL_007e:  stloc.3
      IL_007f:  ldloc.3
      IL_0080:  brtrue.s   IL_0089

      IL_0082:  ldloc.0
      IL_0083:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0088:  nop
      IL_0089:  endfinally
    }  // end handler
    IL_008a:  nop
    IL_008b:  nop
    IL_008c:  ret
  } // end of method NHibernateContext::System.Data.Services.IUpdatable.SaveChanges

  .method private hidebysig newslot virtual final 
          instance void  System.Data.Services.IUpdatable.SetReference(object targetResource,
                                                                      string propertyName,
                                                                      object propertyValue) cil managed
  {
    .override [System.Data.Services]System.Data.Services.IUpdatable::SetReference
    // Code size       12 (0xc)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldarg.2
    IL_0004:  ldarg.3
    IL_0005:  callvirt   instance void [System.Data.Services]System.Data.Services.IUpdatable::SetValue(object,
                                                                                                       string,
                                                                                                       object)
    IL_000a:  nop
    IL_000b:  ret
  } // end of method NHibernateContext::System.Data.Services.IUpdatable.SetReference

  .method private hidebysig newslot virtual final 
          instance void  System.Data.Services.IUpdatable.SetValue(object targetResource,
                                                                  string propertyName,
                                                                  object propertyValue) cil managed
  {
    .override [System.Data.Services]System.Data.Services.IUpdatable::SetValue
    // Code size       99 (0x63)
    .maxstack  5
    .locals init (class [NHibernate]NHibernate.Metadata.IClassMetadata V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateContext::session
    IL_0007:  callvirt   instance class [NHibernate]NHibernate.ISessionFactory [NHibernate]NHibernate.ISession::get_SessionFactory()
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_0012:  callvirt   instance string [mscorlib]System.Type::get_FullName()
    IL_0017:  callvirt   instance class [NHibernate]NHibernate.Metadata.IClassMetadata [NHibernate]NHibernate.ISessionFactory::GetClassMetadata(string)
    IL_001c:  stloc.0
    IL_001d:  ldloc.0
    IL_001e:  ldnull
    IL_001f:  ceq
    IL_0021:  ldc.i4.0
    IL_0022:  ceq
    IL_0024:  stloc.1
    IL_0025:  ldloc.1
    IL_0026:  brtrue.s   IL_0034

    IL_0028:  nop
    IL_0029:  ldstr      "Type not recognized as a valid type for this Context"
    IL_002e:  newobj     instance void [System.Data.Services]System.Data.Services.DataServiceException::.ctor(string)
    IL_0033:  throw

    IL_0034:  ldloc.0
    IL_0035:  callvirt   instance string [NHibernate]NHibernate.Metadata.IClassMetadata::get_IdentifierPropertyName()
    IL_003a:  ldarg.2
    IL_003b:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_0040:  ldc.i4.0
    IL_0041:  ceq
    IL_0043:  stloc.1
    IL_0044:  ldloc.1
    IL_0045:  brtrue.s   IL_0055

    IL_0047:  nop
    IL_0048:  ldloc.0
    IL_0049:  ldarg.1
    IL_004a:  ldarg.3
    IL_004b:  ldc.i4.0
    IL_004c:  callvirt   instance void [NHibernate]NHibernate.Metadata.IClassMetadata::SetIdentifier(object,
                                                                                                     object,
                                                                                                     valuetype [NHibernate]NHibernate.EntityMode)
    IL_0051:  nop
    IL_0052:  nop
    IL_0053:  br.s       IL_0062

    IL_0055:  nop
    IL_0056:  ldloc.0
    IL_0057:  ldarg.1
    IL_0058:  ldarg.2
    IL_0059:  ldarg.3
    IL_005a:  ldc.i4.0
    IL_005b:  callvirt   instance void [NHibernate]NHibernate.Metadata.IClassMetadata::SetPropertyValue(object,
                                                                                                        string,
                                                                                                        object,
                                                                                                        valuetype [NHibernate]NHibernate.EntityMode)
    IL_0060:  nop
    IL_0061:  nop
    IL_0062:  ret
  } // end of method NHibernateContext::System.Data.Services.IUpdatable.SetValue

  .method private hidebysig newslot virtual final 
          instance class [mscorlib]System.Collections.IEnumerable 
          System.Data.Services.IExpandProvider.ApplyExpansions(class [System.Core]System.Linq.IQueryable queryable,
                                                               class [mscorlib]System.Collections.Generic.ICollection`1<class [System.Data.Services]System.Data.Services.ExpandSegmentCollection> expandPaths) cil managed
  {
    .override [System.Data.Services]System.Data.Services.IExpandProvider::ApplyExpansions
    // Code size       252 (0xfc)
    .maxstack  2
    .locals init (class NHibernate.Linq.INHibernateQueryable V_0,
             class [System.Data.Services]System.Data.Services.ExpandSegmentCollection V_1,
             class [System.Data.Services]System.Data.Services.ExpandSegment V_2,
             class [mscorlib]System.Collections.IEnumerable V_3,
             bool V_4,
             class [mscorlib]System.Collections.Generic.IEnumerator`1<class [System.Data.Services]System.Data.Services.ExpandSegmentCollection> V_5,
             valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [System.Data.Services]System.Data.Services.ExpandSegment> V_6)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  ldnull
    IL_0003:  ceq
    IL_0005:  ldc.i4.0
    IL_0006:  ceq
    IL_0008:  stloc.s    V_4
    IL_000a:  ldloc.s    V_4
    IL_000c:  brtrue.s   IL_0019

    IL_000e:  ldstr      "Query cannot be null"
    IL_0013:  newobj     instance void [System.Data.Services]System.Data.Services.DataServiceException::.ctor(string)
    IL_0018:  throw

    IL_0019:  ldarg.1
    IL_001a:  isinst     NHibernate.Linq.INHibernateQueryable
    IL_001f:  stloc.0
    IL_0020:  ldloc.0
    IL_0021:  ldnull
    IL_0022:  ceq
    IL_0024:  ldc.i4.0
    IL_0025:  ceq
    IL_0027:  stloc.s    V_4
    IL_0029:  ldloc.s    V_4
    IL_002b:  brtrue.s   IL_0038

    IL_002d:  ldstr      "Expansion only supported on INHibernateQueryable q"
    + "ueries"
    IL_0032:  newobj     instance void [System.Data.Services]System.Data.Services.DataServiceException::.ctor(string)
    IL_0037:  throw

    IL_0038:  ldarg.2
    IL_0039:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.ICollection`1<class [System.Data.Services]System.Data.Services.ExpandSegmentCollection>::get_Count()
    IL_003e:  ldc.i4.0
    IL_003f:  ceq
    IL_0041:  ldc.i4.0
    IL_0042:  ceq
    IL_0044:  stloc.s    V_4
    IL_0046:  ldloc.s    V_4
    IL_0048:  brtrue.s   IL_0055

    IL_004a:  ldstr      "Expansion Paths cannot be null"
    IL_004f:  newobj     instance void [System.Data.Services]System.Data.Services.DataServiceException::.ctor(string)
    IL_0054:  throw

    IL_0055:  nop
    IL_0056:  ldarg.2
    IL_0057:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.Generic.IEnumerable`1<class [System.Data.Services]System.Data.Services.ExpandSegmentCollection>::GetEnumerator()
    IL_005c:  stloc.s    V_5
    .try
    {
      IL_005e:  br.s       IL_00cd

      IL_0060:  ldloc.s    V_5
      IL_0062:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class [System.Data.Services]System.Data.Services.ExpandSegmentCollection>::get_Current()
      IL_0067:  stloc.1
      IL_0068:  nop
      IL_0069:  nop
      IL_006a:  ldloc.1
      IL_006b:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class [System.Data.Services]System.Data.Services.ExpandSegment>::GetEnumerator()
      IL_0070:  stloc.s    V_6
      .try
      {
        IL_0072:  br.s       IL_00ad

        IL_0074:  ldloca.s   V_6
        IL_0076:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [System.Data.Services]System.Data.Services.ExpandSegment>::get_Current()
        IL_007b:  stloc.2
        IL_007c:  nop
        IL_007d:  ldloc.2
        IL_007e:  callvirt   instance bool [System.Data.Services]System.Data.Services.ExpandSegment::get_HasFilter()
        IL_0083:  ldc.i4.0
        IL_0084:  ceq
        IL_0086:  stloc.s    V_4
        IL_0088:  ldloc.s    V_4
        IL_008a:  brtrue.s   IL_0098

        IL_008c:  nop
        IL_008d:  ldstr      "NHibernate does not support Expansions with Filters"
        IL_0092:  newobj     instance void [System.Data.Services]System.Data.Services.DataServiceException::.ctor(string)
        IL_0097:  throw

        IL_0098:  nop
        IL_0099:  ldloc.0
        IL_009a:  callvirt   instance class NHibernate.Linq.QueryOptions NHibernate.Linq.INHibernateQueryable::get_QueryOptions()
        IL_009f:  ldloc.2
        IL_00a0:  callvirt   instance string [System.Data.Services]System.Data.Services.ExpandSegment::get_Name()
        IL_00a5:  callvirt   instance void NHibernate.Linq.QueryOptions::AddExpansion(string)
        IL_00aa:  nop
        IL_00ab:  nop
        IL_00ac:  nop
        IL_00ad:  ldloca.s   V_6
        IL_00af:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [System.Data.Services]System.Data.Services.ExpandSegment>::MoveNext()
        IL_00b4:  stloc.s    V_4
        IL_00b6:  ldloc.s    V_4
        IL_00b8:  brtrue.s   IL_0074

        IL_00ba:  leave.s    IL_00cb

      }  // end .try
      finally
      {
        IL_00bc:  ldloca.s   V_6
        IL_00be:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [System.Data.Services]System.Data.Services.ExpandSegment>
        IL_00c4:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
        IL_00c9:  nop
        IL_00ca:  endfinally
      }  // end handler
      IL_00cb:  nop
      IL_00cc:  nop
      IL_00cd:  ldloc.s    V_5
      IL_00cf:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_00d4:  stloc.s    V_4
      IL_00d6:  ldloc.s    V_4
      IL_00d8:  brtrue.s   IL_0060

      IL_00da:  leave.s    IL_00f0

    }  // end .try
    finally
    {
      IL_00dc:  ldloc.s    V_5
      IL_00de:  ldnull
      IL_00df:  ceq
      IL_00e1:  stloc.s    V_4
      IL_00e3:  ldloc.s    V_4
      IL_00e5:  brtrue.s   IL_00ef

      IL_00e7:  ldloc.s    V_5
      IL_00e9:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_00ee:  nop
      IL_00ef:  endfinally
    }  // end handler
    IL_00f0:  nop
    IL_00f1:  ldloc.0
    IL_00f2:  isinst     [mscorlib]System.Collections.IEnumerable
    IL_00f7:  stloc.3
    IL_00f8:  br.s       IL_00fa

    IL_00fa:  ldloc.3
    IL_00fb:  ret
  } // end of method NHibernateContext::System.Data.Services.IExpandProvider.ApplyExpansions

  .method private hidebysig instance void 
          '<System.Data.Services.IUpdatable.SaveChanges>b__0'(object o) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateContext::session
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void [NHibernate]NHibernate.ISession::SaveOrUpdate(object)
    IL_000c:  nop
    IL_000d:  ret
  } // end of method NHibernateContext::'<System.Data.Services.IUpdatable.SaveChanges>b__0'

  .property instance class [NHibernate]NHibernate.ISession
          Session()
  {
    .get instance class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateContext::get_Session()
  } // end of property NHibernateContext::Session
  .property instance class [mscorlib]System.Collections.Generic.List`1<object>
          UpdateCache()
  {
    .get instance class [mscorlib]System.Collections.Generic.List`1<object> NHibernate.Linq.NHibernateContext::get_UpdateCache()
  } // end of property NHibernateContext::UpdateCache
} // end of class NHibernate.Linq.NHibernateContext

.class public abstract auto ansi sealed beforefieldinit NHibernate.Linq.NHibernateExtensions
       extends [mscorlib]System.Object
{
  .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig static class NHibernate.Linq.INHibernateQueryable`1<!!T> 
          Linq<T>(class [NHibernate]NHibernate.ISession session) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       25 (0x19)
    .maxstack  3
    .locals init (class NHibernate.Linq.QueryOptions V_0,
             class NHibernate.Linq.INHibernateQueryable`1<!!T> V_1)
    IL_0000:  nop
    IL_0001:  newobj     instance void NHibernate.Linq.QueryOptions::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldloc.0
    IL_0009:  newobj     instance void NHibernate.Linq.NHibernateQueryProvider::.ctor(class [NHibernate]NHibernate.ISession,
                                                                                      class NHibernate.Linq.QueryOptions)
    IL_000e:  ldloc.0
    IL_000f:  newobj     instance void class NHibernate.Linq.Query`1<!!T>::.ctor(class NHibernate.Linq.QueryProvider,
                                                                                 class NHibernate.Linq.QueryOptions)
    IL_0014:  stloc.1
    IL_0015:  br.s       IL_0017

    IL_0017:  ldloc.1
    IL_0018:  ret
  } // end of method NHibernateExtensions::Linq

  .method public hidebysig static class NHibernate.Linq.INHibernateQueryable`1<!!T> 
          Linq<T>(class [NHibernate]NHibernate.ISession session,
                  string entityName) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       26 (0x1a)
    .maxstack  4
    .locals init (class NHibernate.Linq.QueryOptions V_0,
             class NHibernate.Linq.INHibernateQueryable`1<!!T> V_1)
    IL_0000:  nop
    IL_0001:  newobj     instance void NHibernate.Linq.QueryOptions::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldloc.0
    IL_0009:  ldarg.1
    IL_000a:  newobj     instance void NHibernate.Linq.NHibernateQueryProvider::.ctor(class [NHibernate]NHibernate.ISession,
                                                                                      class NHibernate.Linq.QueryOptions,
                                                                                      string)
    IL_000f:  ldloc.0
    IL_0010:  newobj     instance void class NHibernate.Linq.Query`1<!!T>::.ctor(class NHibernate.Linq.QueryProvider,
                                                                                 class NHibernate.Linq.QueryOptions)
    IL_0015:  stloc.1
    IL_0016:  br.s       IL_0018

    IL_0018:  ldloc.1
    IL_0019:  ret
  } // end of method NHibernateExtensions::Linq

  .method public hidebysig static class NHibernate.Linq.INHibernateQueryable`1<!!T> 
          Linq<T>(class [NHibernate]NHibernate.ISession session,
                  class [NHibernate]NHibernate.ICriteria criteria) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       79 (0x4f)
    .maxstack  3
    .locals init (class NHibernate.Linq.INHibernateQueryable`1<!!T> V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  ldnull
    IL_0003:  ceq
    IL_0005:  ldc.i4.0
    IL_0006:  ceq
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  brtrue.s   IL_0017

    IL_000c:  ldstr      "criteria"
    IL_0011:  newobj     instance void [mscorlib]System.ArgumentNullException::.ctor(string)
    IL_0016:  throw

    IL_0017:  ldarg.1
    IL_0018:  callvirt   instance class [mscorlib]System.Type [NHibernate]NHibernate.ICriteria::GetRootEntityTypeIfAvailable()
    IL_001d:  ldtoken    !!T
    IL_0022:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0027:  ceq
    IL_0029:  stloc.1
    IL_002a:  ldloc.1
    IL_002b:  brtrue.s   IL_003d

    IL_002d:  ldstr      "Criteria root type must match type of Linq query."
    IL_0032:  ldstr      "criteria"
    IL_0037:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string,
                                                                                 string)
    IL_003c:  throw

    IL_003d:  ldarg.0
    IL_003e:  ldarg.1
    IL_003f:  newobj     instance void NHibernate.Linq.NHibernateQueryProvider::.ctor(class [NHibernate]NHibernate.ISession,
                                                                                      class [NHibernate]NHibernate.ICriteria)
    IL_0044:  ldnull
    IL_0045:  newobj     instance void class NHibernate.Linq.Query`1<!!T>::.ctor(class NHibernate.Linq.QueryProvider,
                                                                                 class NHibernate.Linq.QueryOptions)
    IL_004a:  stloc.0
    IL_004b:  br.s       IL_004d

    IL_004d:  ldloc.0
    IL_004e:  ret
  } // end of method NHibernateExtensions::Linq

  .method public hidebysig static void  List<T>(class [NHibernate]NHibernate.ISession session,
                                                class [System.Core]System.Linq.Expressions.Expression expr,
                                                class [mscorlib]System.Collections.IList list) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       182 (0xb6)
    .maxstack  3
    .locals init (class NHibernate.Linq.QueryOptions V_0,
             class NHibernate.Linq.NHibernateQueryProvider V_1,
             class [System.Core]System.Linq.IQueryable`1<!!T> V_2,
             object V_3,
             class [NHibernate]NHibernate.ICriteria V_4,
             class [mscorlib]System.Collections.IEnumerable V_5,
             object V_6,
             bool V_7,
             class [mscorlib]System.Collections.IEnumerator V_8,
             class [mscorlib]System.IDisposable V_9)
    IL_0000:  nop
    IL_0001:  newobj     instance void NHibernate.Linq.QueryOptions::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldloc.0
    IL_0009:  newobj     instance void NHibernate.Linq.NHibernateQueryProvider::.ctor(class [NHibernate]NHibernate.ISession,
                                                                                      class NHibernate.Linq.QueryOptions)
    IL_000e:  stloc.1
    IL_000f:  ldloc.1
    IL_0010:  ldloc.0
    IL_0011:  newobj     instance void class NHibernate.Linq.Query`1<!!T>::.ctor(class NHibernate.Linq.QueryProvider,
                                                                                 class NHibernate.Linq.QueryOptions)
    IL_0016:  stloc.2
    IL_0017:  ldloc.2
    IL_0018:  ldarg.1
    IL_0019:  castclass  class [System.Core]System.Linq.Expressions.Expression`1<class [System.Core]System.Func`2<!!T,bool>>
    IL_001e:  call       class [System.Core]System.Linq.IQueryable`1<!!0> [System.Core]System.Linq.Queryable::Where<!!0>(class [System.Core]System.Linq.IQueryable`1<!!0>,
                                                                                                                         class [System.Core]System.Linq.Expressions.Expression`1<class [System.Core]System.Func`2<!!0,bool>>)
    IL_0023:  stloc.2
    IL_0024:  ldloc.1
    IL_0025:  ldloc.2
    IL_0026:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression [System.Core]System.Linq.IQueryable::get_Expression()
    IL_002b:  callvirt   instance object NHibernate.Linq.NHibernateQueryProvider::TranslateExpression(class [System.Core]System.Linq.Expressions.Expression)
    IL_0030:  stloc.3
    IL_0031:  ldloc.3
    IL_0032:  isinst     [NHibernate]NHibernate.ICriteria
    IL_0037:  stloc.s    V_4
    IL_0039:  ldloc.s    V_4
    IL_003b:  ldnull
    IL_003c:  ceq
    IL_003e:  stloc.s    V_7
    IL_0040:  ldloc.s    V_7
    IL_0042:  brtrue.s   IL_0051

    IL_0044:  nop
    IL_0045:  ldloc.s    V_4
    IL_0047:  ldarg.2
    IL_0048:  callvirt   instance void [NHibernate]NHibernate.ICriteria::List(class [mscorlib]System.Collections.IList)
    IL_004d:  nop
    IL_004e:  nop
    IL_004f:  br.s       IL_00b5

    IL_0051:  nop
    IL_0052:  ldloc.3
    IL_0053:  isinst     [mscorlib]System.Collections.IEnumerable
    IL_0058:  stloc.s    V_5
    IL_005a:  ldloc.s    V_5
    IL_005c:  ldnull
    IL_005d:  ceq
    IL_005f:  stloc.s    V_7
    IL_0061:  ldloc.s    V_7
    IL_0063:  brtrue.s   IL_00b4

    IL_0065:  nop
    IL_0066:  nop
    IL_0067:  ldloc.s    V_5
    IL_0069:  callvirt   instance class [mscorlib]System.Collections.IEnumerator [mscorlib]System.Collections.IEnumerable::GetEnumerator()
    IL_006e:  stloc.s    V_8
    .try
    {
      IL_0070:  br.s       IL_0086

      IL_0072:  ldloc.s    V_8
      IL_0074:  callvirt   instance object [mscorlib]System.Collections.IEnumerator::get_Current()
      IL_0079:  stloc.s    V_6
      IL_007b:  nop
      IL_007c:  ldarg.2
      IL_007d:  ldloc.s    V_6
      IL_007f:  callvirt   instance int32 [mscorlib]System.Collections.IList::Add(object)
      IL_0084:  pop
      IL_0085:  nop
      IL_0086:  ldloc.s    V_8
      IL_0088:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_008d:  stloc.s    V_7
      IL_008f:  ldloc.s    V_7
      IL_0091:  brtrue.s   IL_0072

      IL_0093:  leave.s    IL_00b2

    }  // end .try
    finally
    {
      IL_0095:  ldloc.s    V_8
      IL_0097:  isinst     [mscorlib]System.IDisposable
      IL_009c:  stloc.s    V_9
      IL_009e:  ldloc.s    V_9
      IL_00a0:  ldnull
      IL_00a1:  ceq
      IL_00a3:  stloc.s    V_7
      IL_00a5:  ldloc.s    V_7
      IL_00a7:  brtrue.s   IL_00b1

      IL_00a9:  ldloc.s    V_9
      IL_00ab:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_00b0:  nop
      IL_00b1:  endfinally
    }  // end handler
    IL_00b2:  nop
    IL_00b3:  nop
    IL_00b4:  nop
    IL_00b5:  ret
  } // end of method NHibernateExtensions::List

} // end of class NHibernate.Linq.NHibernateExtensions

.class public abstract auto ansi beforefieldinit NHibernate.Linq.QueryProvider
       extends [mscorlib]System.Object
       implements [System.Core]System.Linq.IQueryProvider
{
  .field family class NHibernate.Linq.QueryOptions queryOptions
  .method private hidebysig newslot virtual final 
          instance class [System.Core]System.Linq.IQueryable`1<!!T> 
          System.Linq.IQueryProvider.CreateQuery<T>(class [System.Core]System.Linq.Expressions.Expression expression) cil managed
  {
    .override [System.Core]System.Linq.IQueryProvider::CreateQuery
    // Code size       19 (0x13)
    .maxstack  4
    .locals init (class [System.Core]System.Linq.IQueryable`1<!!T> V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldarg.0
    IL_0004:  ldfld      class NHibernate.Linq.QueryOptions NHibernate.Linq.QueryProvider::queryOptions
    IL_0009:  newobj     instance void class NHibernate.Linq.Query`1<!!T>::.ctor(class NHibernate.Linq.QueryProvider,
                                                                                 class [System.Core]System.Linq.Expressions.Expression,
                                                                                 class NHibernate.Linq.QueryOptions)
    IL_000e:  stloc.0
    IL_000f:  br.s       IL_0011

    IL_0011:  ldloc.0
    IL_0012:  ret
  } // end of method QueryProvider::System.Linq.IQueryProvider.CreateQuery

  .method private hidebysig newslot virtual final 
          instance class [System.Core]System.Linq.IQueryable 
          System.Linq.IQueryProvider.CreateQuery(class [System.Core]System.Linq.Expressions.Expression expression) cil managed
  {
    .override [System.Core]System.Linq.IQueryProvider::CreateQuery
    // Code size       86 (0x56)
    .maxstack  4
    .locals init (class NHibernate.Linq.QueryOptions V_0,
             class [mscorlib]System.Type V_1,
             class [System.Core]System.Linq.IQueryable V_2,
             class [mscorlib]System.Type[] V_3,
             object[] V_4)
    IL_0000:  nop
    IL_0001:  newobj     instance void NHibernate.Linq.QueryOptions::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_000d:  call       class [mscorlib]System.Type NHibernate.Linq.Util.TypeSystem::GetElementType(class [mscorlib]System.Type)
    IL_0012:  stloc.1
    IL_0013:  ldtoken    NHibernate.Linq.Query`1
    IL_0018:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_001d:  ldc.i4.1
    IL_001e:  newarr     [mscorlib]System.Type
    IL_0023:  stloc.3
    IL_0024:  ldloc.3
    IL_0025:  ldc.i4.0
    IL_0026:  ldloc.1
    IL_0027:  stelem.ref
    IL_0028:  ldloc.3
    IL_0029:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Type::MakeGenericType(class [mscorlib]System.Type[])
    IL_002e:  ldc.i4.3
    IL_002f:  newarr     [mscorlib]System.Object
    IL_0034:  stloc.s    V_4
    IL_0036:  ldloc.s    V_4
    IL_0038:  ldc.i4.0
    IL_0039:  ldarg.0
    IL_003a:  stelem.ref
    IL_003b:  ldloc.s    V_4
    IL_003d:  ldc.i4.1
    IL_003e:  ldarg.1
    IL_003f:  stelem.ref
    IL_0040:  ldloc.s    V_4
    IL_0042:  ldc.i4.2
    IL_0043:  ldloc.0
    IL_0044:  stelem.ref
    IL_0045:  ldloc.s    V_4
    IL_0047:  call       object [mscorlib]System.Activator::CreateInstance(class [mscorlib]System.Type,
                                                                           object[])
    IL_004c:  castclass  [System.Core]System.Linq.IQueryable
    IL_0051:  stloc.2
    IL_0052:  br.s       IL_0054

    IL_0054:  ldloc.2
    IL_0055:  ret
  } // end of method QueryProvider::System.Linq.IQueryProvider.CreateQuery

  .method private hidebysig newslot virtual final 
          instance !!T  System.Linq.IQueryProvider.Execute<T>(class [System.Core]System.Linq.Expressions.Expression expression) cil managed
  {
    .override [System.Core]System.Linq.IQueryProvider::Execute
    // Code size       18 (0x12)
    .maxstack  2
    .locals init (!!T V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance object NHibernate.Linq.QueryProvider::Execute(class [System.Core]System.Linq.Expressions.Expression)
    IL_0008:  unbox.any  !!T
    IL_000d:  stloc.0
    IL_000e:  br.s       IL_0010

    IL_0010:  ldloc.0
    IL_0011:  ret
  } // end of method QueryProvider::System.Linq.IQueryProvider.Execute

  .method private hidebysig newslot virtual final 
          instance object  System.Linq.IQueryProvider.Execute(class [System.Core]System.Linq.Expressions.Expression expression) cil managed
  {
    .override [System.Core]System.Linq.IQueryProvider::Execute
    // Code size       13 (0xd)
    .maxstack  2
    .locals init (object V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance object NHibernate.Linq.QueryProvider::Execute(class [System.Core]System.Linq.Expressions.Expression)
    IL_0008:  stloc.0
    IL_0009:  br.s       IL_000b

    IL_000b:  ldloc.0
    IL_000c:  ret
  } // end of method QueryProvider::System.Linq.IQueryProvider.Execute

  .method public hidebysig newslot abstract virtual 
          instance object  Execute(class [System.Core]System.Linq.Expressions.Expression expression) cil managed
  {
  } // end of method QueryProvider::Execute

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method QueryProvider::.ctor

} // end of class NHibernate.Linq.QueryProvider

.class public auto ansi beforefieldinit NHibernate.Linq.NHibernateQueryProvider
       extends NHibernate.Linq.QueryProvider
{
  .field private initonly class [NHibernate]NHibernate.ISession session
  .field private initonly string entityName
  .field private initonly class [NHibernate]NHibernate.ICriteria rootCriteria
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [NHibernate]NHibernate.ISession session,
                               class NHibernate.Linq.QueryOptions queryOptions) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldnull
    IL_0004:  call       instance void NHibernate.Linq.NHibernateQueryProvider::.ctor(class [NHibernate]NHibernate.ISession,
                                                                                      class NHibernate.Linq.QueryOptions,
                                                                                      string)
    IL_0009:  nop
    IL_000a:  nop
    IL_000b:  nop
    IL_000c:  ret
  } // end of method NHibernateQueryProvider::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [NHibernate]NHibernate.ISession session,
                               class NHibernate.Linq.QueryOptions queryOptions,
                               string entityName) cil managed
  {
    // Code size       53 (0x35)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void NHibernate.Linq.QueryProvider::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.1
    IL_0009:  ldnull
    IL_000a:  ceq
    IL_000c:  ldc.i4.0
    IL_000d:  ceq
    IL_000f:  stloc.0
    IL_0010:  ldloc.0
    IL_0011:  brtrue.s   IL_001e

    IL_0013:  ldstr      "session"
    IL_0018:  newobj     instance void [mscorlib]System.ArgumentNullException::.ctor(string)
    IL_001d:  throw

    IL_001e:  ldarg.0
    IL_001f:  ldarg.1
    IL_0020:  stfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateQueryProvider::session
    IL_0025:  ldarg.0
    IL_0026:  ldarg.3
    IL_0027:  stfld      string NHibernate.Linq.NHibernateQueryProvider::entityName
    IL_002c:  ldarg.0
    IL_002d:  ldarg.2
    IL_002e:  stfld      class NHibernate.Linq.QueryOptions NHibernate.Linq.QueryProvider::queryOptions
    IL_0033:  nop
    IL_0034:  ret
  } // end of method NHibernateQueryProvider::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [NHibernate]NHibernate.ISession session,
                               class [NHibernate]NHibernate.ICriteria rootCriteria) cil managed
  {
    // Code size       68 (0x44)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void NHibernate.Linq.QueryProvider::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.1
    IL_0009:  ldnull
    IL_000a:  ceq
    IL_000c:  ldc.i4.0
    IL_000d:  ceq
    IL_000f:  stloc.0
    IL_0010:  ldloc.0
    IL_0011:  brtrue.s   IL_001e

    IL_0013:  ldstr      "session"
    IL_0018:  newobj     instance void [mscorlib]System.ArgumentNullException::.ctor(string)
    IL_001d:  throw

    IL_001e:  ldarg.2
    IL_001f:  ldnull
    IL_0020:  ceq
    IL_0022:  ldc.i4.0
    IL_0023:  ceq
    IL_0025:  stloc.0
    IL_0026:  ldloc.0
    IL_0027:  brtrue.s   IL_0034

    IL_0029:  ldstr      "rootCriteria"
    IL_002e:  newobj     instance void [mscorlib]System.ArgumentNullException::.ctor(string)
    IL_0033:  throw

    IL_0034:  ldarg.0
    IL_0035:  ldarg.1
    IL_0036:  stfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateQueryProvider::session
    IL_003b:  ldarg.0
    IL_003c:  ldarg.2
    IL_003d:  stfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.NHibernateQueryProvider::rootCriteria
    IL_0042:  nop
    IL_0043:  ret
  } // end of method NHibernateQueryProvider::.ctor

  .method private hidebysig static object 
          ResultsFromCriteria(class [NHibernate]NHibernate.ICriteria criteria,
                              class [System.Core]System.Linq.Expressions.Expression expression) cil managed
  {
    // Code size       62 (0x3e)
    .maxstack  4
    .locals init (class [mscorlib]System.Type V_0,
             object V_1,
             class [mscorlib]System.Type[] V_2,
             object[] V_3)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_0007:  call       class [mscorlib]System.Type NHibernate.Linq.Util.TypeSystem::GetElementType(class [mscorlib]System.Type)
    IL_000c:  stloc.0
    IL_000d:  ldtoken    NHibernate.Linq.CriteriaResultReader`1
    IL_0012:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0017:  ldc.i4.1
    IL_0018:  newarr     [mscorlib]System.Type
    IL_001d:  stloc.2
    IL_001e:  ldloc.2
    IL_001f:  ldc.i4.0
    IL_0020:  ldloc.0
    IL_0021:  stelem.ref
    IL_0022:  ldloc.2
    IL_0023:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Type::MakeGenericType(class [mscorlib]System.Type[])
    IL_0028:  ldc.i4.1
    IL_0029:  newarr     [mscorlib]System.Object
    IL_002e:  stloc.3
    IL_002f:  ldloc.3
    IL_0030:  ldc.i4.0
    IL_0031:  ldarg.0
    IL_0032:  stelem.ref
    IL_0033:  ldloc.3
    IL_0034:  call       object [mscorlib]System.Activator::CreateInstance(class [mscorlib]System.Type,
                                                                           object[])
    IL_0039:  stloc.1
    IL_003a:  br.s       IL_003c

    IL_003c:  ldloc.1
    IL_003d:  ret
  } // end of method NHibernateQueryProvider::ResultsFromCriteria

  .method public hidebysig instance object 
          TranslateExpression(class [System.Core]System.Linq.Expressions.Expression expression) cil managed
  {
    // Code size       167 (0xa7)
    .maxstack  4
    .locals init (class NHibernate.Linq.Visitors.NHibernateQueryTranslator V_0,
             object V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  call       class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.Evaluator::PartialEval(class [System.Core]System.Linq.Expressions.Expression)
    IL_0007:  starg.s    expression
    IL_0009:  newobj     instance void NHibernate.Linq.Visitors.BinaryBooleanReducer::.ctor()
    IL_000e:  ldarg.1
    IL_000f:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0014:  starg.s    expression
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateQueryProvider::session
    IL_001c:  callvirt   instance class [NHibernate]NHibernate.ISessionFactory [NHibernate]NHibernate.ISession::get_SessionFactory()
    IL_0021:  castclass  [NHibernate]NHibernate.Engine.ISessionFactoryImplementor
    IL_0026:  newobj     instance void NHibernate.Linq.Visitors.AssociationVisitor::.ctor(class [NHibernate]NHibernate.Engine.ISessionFactoryImplementor)
    IL_002b:  ldarg.1
    IL_002c:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0031:  starg.s    expression
    IL_0033:  newobj     instance void NHibernate.Linq.Visitors.InheritanceVisitor::.ctor()
    IL_0038:  ldarg.1
    IL_0039:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_003e:  starg.s    expression
    IL_0040:  ldarg.1
    IL_0041:  call       class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.CollectionAliasVisitor::AssignCollectionAccessAliases(class [System.Core]System.Linq.Expressions.Expression)
    IL_0046:  starg.s    expression
    IL_0048:  newobj     instance void NHibernate.Linq.Visitors.PropertyToMethodVisitor::.ctor()
    IL_004d:  ldarg.1
    IL_004e:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0053:  starg.s    expression
    IL_0055:  newobj     instance void NHibernate.Linq.Visitors.BinaryExpressionOrderer::.ctor()
    IL_005a:  ldarg.1
    IL_005b:  callvirt   instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Visitors.ExpressionVisitor::Visit(class [System.Core]System.Linq.Expressions.Expression)
    IL_0060:  starg.s    expression
    IL_0062:  ldarg.0
    IL_0063:  ldfld      class [NHibernate]NHibernate.ISession NHibernate.Linq.NHibernateQueryProvider::session
    IL_0068:  ldarg.0
    IL_0069:  ldfld      string NHibernate.Linq.NHibernateQueryProvider::entityName
    IL_006e:  newobj     instance void NHibernate.Linq.Visitors.NHibernateQueryTranslator::.ctor(class [NHibernate]NHibernate.ISession,
                                                                                                 string)
    IL_0073:  stloc.0
    IL_0074:  ldarg.0
    IL_0075:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.NHibernateQueryProvider::rootCriteria
    IL_007a:  brfalse.s  IL_0095

    IL_007c:  ldloc.0
    IL_007d:  ldarg.1
    IL_007e:  ldarg.0
    IL_007f:  ldfld      class [NHibernate]NHibernate.ICriteria NHibernate.Linq.NHibernateQueryProvider::rootCriteria
    IL_0084:  callvirt   instance object [mscorlib]System.ICloneable::Clone()
    IL_0089:  castclass  [NHibernate]NHibernate.ICriteria
    IL_008e:  callvirt   instance object NHibernate.Linq.Visitors.NHibernateQueryTranslator::Translate(class [System.Core]System.Linq.Expressions.Expression,
                                                                                                       class [NHibernate]NHibernate.ICriteria)
    IL_0093:  br.s       IL_00a2

    IL_0095:  ldloc.0
    IL_0096:  ldarg.1
    IL_0097:  ldarg.0
    IL_0098:  ldfld      class NHibernate.Linq.QueryOptions NHibernate.Linq.QueryProvider::queryOptions
    IL_009d:  callvirt   instance object NHibernate.Linq.Visitors.NHibernateQueryTranslator::Translate(class [System.Core]System.Linq.Expressions.Expression,
                                                                                                       class NHibernate.Linq.QueryOptions)
    IL_00a2:  stloc.1
    IL_00a3:  br.s       IL_00a5

    IL_00a5:  ldloc.1
    IL_00a6:  ret
  } // end of method NHibernateQueryProvider::TranslateExpression

  .method public hidebysig virtual instance object 
          Execute(class [System.Core]System.Linq.Expressions.Expression expression) cil managed
  {
    // Code size       40 (0x28)
    .maxstack  2
    .locals init (object V_0,
             class [NHibernate]NHibernate.ICriteria V_1,
             object V_2,
             bool V_3)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  call       instance object NHibernate.Linq.NHibernateQueryProvider::TranslateExpression(class [System.Core]System.Linq.Expressions.Expression)
    IL_0008:  stloc.0
    IL_0009:  ldloc.0
    IL_000a:  isinst     [NHibernate]NHibernate.ICriteria
    IL_000f:  stloc.1
    IL_0010:  ldloc.1
    IL_0011:  ldnull
    IL_0012:  ceq
    IL_0014:  stloc.3
    IL_0015:  ldloc.3
    IL_0016:  brtrue.s   IL_0022

    IL_0018:  ldloc.1
    IL_0019:  ldarg.1
    IL_001a:  call       object NHibernate.Linq.NHibernateQueryProvider::ResultsFromCriteria(class [NHibernate]NHibernate.ICriteria,
                                                                                             class [System.Core]System.Linq.Expressions.Expression)
    IL_001f:  stloc.2
    IL_0020:  br.s       IL_0026

    IL_0022:  ldloc.0
    IL_0023:  stloc.2
    IL_0024:  br.s       IL_0026

    IL_0026:  ldloc.2
    IL_0027:  ret
  } // end of method NHibernateQueryProvider::Execute

} // end of class NHibernate.Linq.NHibernateQueryProvider

.class public auto ansi beforefieldinit NHibernate.Linq.Query`1<T>
       extends [mscorlib]System.Object
       implements class NHibernate.Linq.INHibernateQueryable`1<!T>,
                  NHibernate.Linq.INHibernateQueryable,
                  class [System.Core]System.Linq.IOrderedQueryable`1<!T>,
                  class [System.Core]System.Linq.IQueryable`1<!T>,
                  class [mscorlib]System.Collections.Generic.IEnumerable`1<!T>,
                  [System.Core]System.Linq.IOrderedQueryable,
                  [System.Core]System.Linq.IQueryable,
                  [mscorlib]System.Collections.IEnumerable
{
  .field private initonly class NHibernate.Linq.QueryProvider provider
  .field private initonly class [System.Core]System.Linq.Expressions.Expression expression
  .field private initonly class NHibernate.Linq.QueryOptions queryOptions
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class NHibernate.Linq.QueryProvider provider,
                               class NHibernate.Linq.QueryOptions queryOptions) cil managed
  {
    // Code size       58 (0x3a)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.1
    IL_0009:  ldnull
    IL_000a:  ceq
    IL_000c:  ldc.i4.0
    IL_000d:  ceq
    IL_000f:  stloc.0
    IL_0010:  ldloc.0
    IL_0011:  brtrue.s   IL_001e

    IL_0013:  ldstr      "provider"
    IL_0018:  newobj     instance void [mscorlib]System.ArgumentNullException::.ctor(string)
    IL_001d:  throw

    IL_001e:  ldarg.0
    IL_001f:  ldarg.1
    IL_0020:  stfld      class NHibernate.Linq.QueryProvider class NHibernate.Linq.Query`1<!T>::provider
    IL_0025:  ldarg.0
    IL_0026:  ldarg.2
    IL_0027:  stfld      class NHibernate.Linq.QueryOptions class NHibernate.Linq.Query`1<!T>::queryOptions
    IL_002c:  ldarg.0
    IL_002d:  ldarg.0
    IL_002e:  call       class [System.Core]System.Linq.Expressions.ConstantExpression [System.Core]System.Linq.Expressions.Expression::Constant(object)
    IL_0033:  stfld      class [System.Core]System.Linq.Expressions.Expression class NHibernate.Linq.Query`1<!T>::expression
    IL_0038:  nop
    IL_0039:  ret
  } // end of method Query`1::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class NHibernate.Linq.QueryProvider provider,
                               class [System.Core]System.Linq.Expressions.Expression expression,
                               class NHibernate.Linq.QueryOptions queryOptions) cil managed
  {
    // Code size       111 (0x6f)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.1
    IL_0009:  ldnull
    IL_000a:  ceq
    IL_000c:  ldc.i4.0
    IL_000d:  ceq
    IL_000f:  stloc.0
    IL_0010:  ldloc.0
    IL_0011:  brtrue.s   IL_001e

    IL_0013:  ldstr      "provider"
    IL_0018:  newobj     instance void [mscorlib]System.ArgumentNullException::.ctor(string)
    IL_001d:  throw

    IL_001e:  ldarg.2
    IL_001f:  ldnull
    IL_0020:  ceq
    IL_0022:  ldc.i4.0
    IL_0023:  ceq
    IL_0025:  stloc.0
    IL_0026:  ldloc.0
    IL_0027:  brtrue.s   IL_0034

    IL_0029:  ldstr      "expression"
    IL_002e:  newobj     instance void [mscorlib]System.ArgumentNullException::.ctor(string)
    IL_0033:  throw

    IL_0034:  ldtoken    class [System.Core]System.Linq.IQueryable`1<!T>
    IL_0039:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_003e:  ldarg.2
    IL_003f:  callvirt   instance class [mscorlib]System.Type [System.Core]System.Linq.Expressions.Expression::get_Type()
    IL_0044:  callvirt   instance bool [mscorlib]System.Type::IsAssignableFrom(class [mscorlib]System.Type)
    IL_0049:  stloc.0
    IL_004a:  ldloc.0
    IL_004b:  brtrue.s   IL_0058

    IL_004d:  ldstr      "expression"
    IL_0052:  newobj     instance void [mscorlib]System.ArgumentOutOfRangeException::.ctor(string)
    IL_0057:  throw

    IL_0058:  ldarg.0
    IL_0059:  ldarg.1
    IL_005a:  stfld      class NHibernate.Linq.QueryProvider class NHibernate.Linq.Query`1<!T>::provider
    IL_005f:  ldarg.0
    IL_0060:  ldarg.3
    IL_0061:  stfld      class NHibernate.Linq.QueryOptions class NHibernate.Linq.Query`1<!T>::queryOptions
    IL_0066:  ldarg.0
    IL_0067:  ldarg.2
    IL_0068:  stfld      class [System.Core]System.Linq.Expressions.Expression class NHibernate.Linq.Query`1<!T>::expression
    IL_006d:  nop
    IL_006e:  ret
  } // end of method Query`1::.ctor

  .method private hidebysig newslot specialname virtual final 
          instance class [System.Core]System.Linq.Expressions.Expression 
          System.Linq.IQueryable.get_Expression() cil managed
  {
    .override [System.Core]System.Linq.IQueryable::get_Expression
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (class [System.Core]System.Linq.Expressions.Expression V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [System.Core]System.Linq.Expressions.Expression class NHibernate.Linq.Query`1<!T>::expression
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method Query`1::System.Linq.IQueryable.get_Expression

  .method private hidebysig newslot specialname virtual final 
          instance class [mscorlib]System.Type 
          System.Linq.IQueryable.get_ElementType() cil managed
  {
    .override [System.Core]System.Linq.IQueryable::get_ElementType
    // Code size       16 (0x10)
    .maxstack  1
    .locals init (class [mscorlib]System.Type V_0)
    IL_0000:  nop
    IL_0001:  ldtoken    !T
    IL_0006:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_000b:  stloc.0
    IL_000c:  br.s       IL_000e

    IL_000e:  ldloc.0
    IL_000f:  ret
  } // end of method Query`1::System.Linq.IQueryable.get_ElementType

  .method private hidebysig newslot specialname virtual final 
          instance class [System.Core]System.Linq.IQueryProvider 
          System.Linq.IQueryable.get_Provider() cil managed
  {
    .override [System.Core]System.Linq.IQueryable::get_Provider
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (class [System.Core]System.Linq.IQueryProvider V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class NHibernate.Linq.QueryProvider class NHibernate.Linq.Query`1<!T>::provider
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method Query`1::System.Linq.IQueryable.get_Provider

  .method public hidebysig newslot specialname virtual final 
          instance class NHibernate.Linq.QueryOptions 
          get_QueryOptions() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (class NHibernate.Linq.QueryOptions V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class NHibernate.Linq.QueryOptions class NHibernate.Linq.Query`1<!T>::queryOptions
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method Query`1::get_QueryOptions

  .method public hidebysig newslot virtual final 
          instance class [System.Core]System.Linq.IQueryable`1<!T> 
          Expand(string path) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  2
    .locals init (class [System.Core]System.Linq.IQueryable`1<!T> V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class NHibernate.Linq.QueryOptions class NHibernate.Linq.Query`1<!T>::queryOptions
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance void NHibernate.Linq.QueryOptions::AddExpansion(string)
    IL_000d:  nop
    IL_000e:  ldarg.0
    IL_000f:  stloc.0
    IL_0010:  br.s       IL_0012

    IL_0012:  ldloc.0
    IL_0013:  ret
  } // end of method Query`1::Expand

  .method public hidebysig newslot virtual final 
          instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!T> 
          GetEnumerator() cil managed
  {
    // Code size       33 (0x21)
    .maxstack  2
    .locals init (class [mscorlib]System.Collections.Generic.IEnumerator`1<!T> V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class NHibernate.Linq.QueryProvider class NHibernate.Linq.Query`1<!T>::provider
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class [System.Core]System.Linq.Expressions.Expression class NHibernate.Linq.Query`1<!T>::expression
    IL_000d:  callvirt   instance object NHibernate.Linq.QueryProvider::Execute(class [System.Core]System.Linq.Expressions.Expression)
    IL_0012:  castclass  class [mscorlib]System.Collections.Generic.IEnumerable`1<!T>
    IL_0017:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.Generic.IEnumerable`1<!T>::GetEnumerator()
    IL_001c:  stloc.0
    IL_001d:  br.s       IL_001f

    IL_001f:  ldloc.0
    IL_0020:  ret
  } // end of method Query`1::GetEnumerator

  .method private hidebysig newslot virtual final 
          instance class [mscorlib]System.Collections.IEnumerator 
          System.Collections.IEnumerable.GetEnumerator() cil managed
  {
    .override [mscorlib]System.Collections.IEnumerable::GetEnumerator
    // Code size       33 (0x21)
    .maxstack  2
    .locals init (class [mscorlib]System.Collections.IEnumerator V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class NHibernate.Linq.QueryProvider class NHibernate.Linq.Query`1<!T>::provider
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class [System.Core]System.Linq.Expressions.Expression class NHibernate.Linq.Query`1<!T>::expression
    IL_000d:  callvirt   instance object NHibernate.Linq.QueryProvider::Execute(class [System.Core]System.Linq.Expressions.Expression)
    IL_0012:  castclass  [mscorlib]System.Collections.IEnumerable
    IL_0017:  callvirt   instance class [mscorlib]System.Collections.IEnumerator [mscorlib]System.Collections.IEnumerable::GetEnumerator()
    IL_001c:  stloc.0
    IL_001d:  br.s       IL_001f

    IL_001f:  ldloc.0
    IL_0020:  ret
  } // end of method Query`1::System.Collections.IEnumerable.GetEnumerator

  .property instance class [System.Core]System.Linq.Expressions.Expression
          System.Linq.IQueryable.Expression()
  {
    .get instance class [System.Core]System.Linq.Expressions.Expression NHibernate.Linq.Query`1::System.Linq.IQueryable.get_Expression()
  } // end of property Query`1::System.Linq.IQueryable.Expression
  .property instance class [mscorlib]System.Type
          System.Linq.IQueryable.ElementType()
  {
    .get instance class [mscorlib]System.Type NHibernate.Linq.Query`1::System.Linq.IQueryable.get_ElementType()
  } // end of property Query`1::System.Linq.IQueryable.ElementType
  .property instance class [System.Core]System.Linq.IQueryProvider
          System.Linq.IQueryable.Provider()
  {
    .get instance class [System.Core]System.Linq.IQueryProvider NHibernate.Linq.Query`1::System.Linq.IQueryable.get_Provider()
  } // end of property Query`1::System.Linq.IQueryable.Provider
  .property instance class NHibernate.Linq.QueryOptions
          QueryOptions()
  {
    .get instance class NHibernate.Linq.QueryOptions NHibernate.Linq.Query`1::get_QueryOptions()
  } // end of property Query`1::QueryOptions
} // end of class NHibernate.Linq.Query`1

.class public auto ansi beforefieldinit NHibernate.Linq.QueryOptions
       extends [mscorlib]System.Object
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass3'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public bool cachable
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass3'::.ctor

    .method public hidebysig instance void 
            '<SetCachable>b__2'(class [NHibernate]NHibernate.ICriteria criteria) cil managed
    {
      // Code size       14 (0xe)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldarg.0
      IL_0002:  ldfld      bool NHibernate.Linq.QueryOptions/'<>c__DisplayClass3'::cachable
      IL_0007:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::SetCacheable(bool)
      IL_000c:  pop
      IL_000d:  ret
    } // end of method '<>c__DisplayClass3'::'<SetCachable>b__2'

  } // end of class '<>c__DisplayClass3'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass6'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public valuetype [NHibernate]NHibernate.CacheMode mode
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass6'::.ctor

    .method public hidebysig instance void 
            '<SetCacheMode>b__5'(class [NHibernate]NHibernate.ICriteria criteria) cil managed
    {
      // Code size       14 (0xe)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldarg.0
      IL_0002:  ldfld      valuetype [NHibernate]NHibernate.CacheMode NHibernate.Linq.QueryOptions/'<>c__DisplayClass6'::mode
      IL_0007:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::SetCacheMode(valuetype [NHibernate]NHibernate.CacheMode)
      IL_000c:  pop
      IL_000d:  ret
    } // end of method '<>c__DisplayClass6'::'<SetCacheMode>b__5'

  } // end of class '<>c__DisplayClass6'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass9'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string cacheRegion
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass9'::.ctor

    .method public hidebysig instance void 
            '<SetCacheRegion>b__8'(class [NHibernate]NHibernate.ICriteria criteria) cil managed
    {
      // Code size       14 (0xe)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldarg.0
      IL_0002:  ldfld      string NHibernate.Linq.QueryOptions/'<>c__DisplayClass9'::cacheRegion
      IL_0007:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::SetCacheRegion(string)
      IL_000c:  pop
      IL_000d:  ret
    } // end of method '<>c__DisplayClass9'::'<SetCacheRegion>b__8'

  } // end of class '<>c__DisplayClass9'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClassc'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string comment
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClassc'::.ctor

    .method public hidebysig instance void 
            '<SetComment>b__b'(class [NHibernate]NHibernate.ICriteria criteria) cil managed
    {
      // Code size       14 (0xe)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldarg.0
      IL_0002:  ldfld      string NHibernate.Linq.QueryOptions/'<>c__DisplayClassc'::comment
      IL_0007:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::SetComment(string)
      IL_000c:  pop
      IL_000d:  ret
    } // end of method '<>c__DisplayClassc'::'<SetComment>b__b'

  } // end of class '<>c__DisplayClassc'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClassf'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string path
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClassf'::.ctor

    .method public hidebysig instance void 
            '<AddExpansion>b__e'(class [NHibernate]NHibernate.ICriteria criteria) cil managed
    {
      // Code size       16 (0x10)
      .maxstack  8
      IL_0000:  nop
      IL_0001:  ldarg.1
      IL_0002:  ldarg.0
      IL_0003:  ldfld      string NHibernate.Linq.QueryOptions/'<>c__DisplayClassf'::path
      IL_0008:  ldc.i4.2
      IL_0009:  callvirt   instance class [NHibernate]NHibernate.ICriteria [NHibernate]NHibernate.ICriteria::SetFetchMode(string,
                                                                                                                          valuetype [NHibernate]NHibernate.FetchMode)
      IL_000e:  pop
      IL_000f:  ret
    } // end of method '<>c__DisplayClassf'::'<AddExpansion>b__e'

  } // end of class '<>c__DisplayClassf'

  .field private class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria> action
  .field private static class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria> 'CS$<>9__CachedAnonymousMethodDelegate1'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       47 (0x2f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldsfld     class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria> NHibernate.Linq.QueryOptions::'CS$<>9__CachedAnonymousMethodDelegate1'
    IL_000e:  brtrue.s   IL_0023

    IL_0010:  ldnull
    IL_0011:  ldftn      void NHibernate.Linq.QueryOptions::'<.ctor>b__0'(class [NHibernate]NHibernate.ICriteria)
    IL_0017:  newobj     instance void class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria>::.ctor(object,
                                                                                                                      native int)
    IL_001c:  stsfld     class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria> NHibernate.Linq.QueryOptions::'CS$<>9__CachedAnonymousMethodDelegate1'
    IL_0021:  br.s       IL_0023

    IL_0023:  ldsfld     class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria> NHibernate.Linq.QueryOptions::'CS$<>9__CachedAnonymousMethodDelegate1'
    IL_0028:  stfld      class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria> NHibernate.Linq.QueryOptions::action
    IL_002d:  nop
    IL_002e:  ret
  } // end of method QueryOptions::.ctor

  .method public hidebysig instance class NHibernate.Linq.QueryOptions 
          SetCachable(bool cachable) cil managed
  {
    // Code size       54 (0x36)
    .maxstack  5
    .locals init (class NHibernate.Linq.QueryOptions/'<>c__DisplayClass3' V_0,
             class NHibernate.Linq.QueryOptions V_1)
    IL_0000:  newobj     instance void NHibernate.Linq.QueryOptions/'<>c__DisplayClass3'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      bool NHibernate.Linq.QueryOptions/'<>c__DisplayClass3'::cachable
    IL_000d:  nop
    IL_000e:  ldarg.0
    IL_000f:  dup
    IL_0010:  ldfld      class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria> NHibernate.Linq.QueryOptions::action
    IL_0015:  ldloc.0
    IL_0016:  ldftn      instance void NHibernate.Linq.QueryOptions/'<>c__DisplayClass3'::'<SetCachable>b__2'(class [NHibernate]NHibernate.ICriteria)
    IL_001c:  newobj     instance void class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria>::.ctor(object,
                                                                                                                      native int)
    IL_0021:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Combine(class [mscorlib]System.Delegate,
                                                                                            class [mscorlib]System.Delegate)
    IL_0026:  castclass  class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria>
    IL_002b:  stfld      class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria> NHibernate.Linq.QueryOptions::action
    IL_0030:  ldarg.0
    IL_0031:  stloc.1
    IL_0032:  br.s       IL_0034

    IL_0034:  ldloc.1
    IL_0035:  ret
  } // end of method QueryOptions::SetCachable

  .method public hidebysig instance class NHibernate.Linq.QueryOptions 
          SetCacheMode(valuetype [NHibernate]NHibernate.CacheMode mode) cil managed
  {
    // Code size       54 (0x36)
    .maxstack  5
    .locals init (class NHibernate.Linq.QueryOptions/'<>c__DisplayClass6' V_0,
             class NHibernate.Linq.QueryOptions V_1)
    IL_0000:  newobj     instance void NHibernate.Linq.QueryOptions/'<>c__DisplayClass6'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      valuetype [NHibernate]NHibernate.CacheMode NHibernate.Linq.QueryOptions/'<>c__DisplayClass6'::mode
    IL_000d:  nop
    IL_000e:  ldarg.0
    IL_000f:  dup
    IL_0010:  ldfld      class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria> NHibernate.Linq.QueryOptions::action
    IL_0015:  ldloc.0
    IL_0016:  ldftn      instance void NHibernate.Linq.QueryOptions/'<>c__DisplayClass6'::'<SetCacheMode>b__5'(class [NHibernate]NHibernate.ICriteria)
    IL_001c:  newobj     instance void class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria>::.ctor(object,
                                                                                                                      native int)
    IL_0021:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Combine(class [mscorlib]System.Delegate,
                                                                                            class [mscorlib]System.Delegate)
    IL_0026:  castclass  class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria>
    IL_002b:  stfld      class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria> NHibernate.Linq.QueryOptions::action
    IL_0030:  ldarg.0
    IL_0031:  stloc.1
    IL_0032:  br.s       IL_0034

    IL_0034:  ldloc.1
    IL_0035:  ret
  } // end of method QueryOptions::SetCacheMode

  .method public hidebysig instance class NHibernate.Linq.QueryOptions 
          SetCacheRegion(string cacheRegion) cil managed
  {
    // Code size       54 (0x36)
    .maxstack  5
    .locals init (class NHibernate.Linq.QueryOptions/'<>c__DisplayClass9' V_0,
             class NHibernate.Linq.QueryOptions V_1)
    IL_0000:  newobj     instance void NHibernate.Linq.QueryOptions/'<>c__DisplayClass9'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      string NHibernate.Linq.QueryOptions/'<>c__DisplayClass9'::cacheRegion
    IL_000d:  nop
    IL_000e:  ldarg.0
    IL_000f:  dup
    IL_0010:  ldfld      class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria> NHibernate.Linq.QueryOptions::action
    IL_0015:  ldloc.0
    IL_0016:  ldftn      instance void NHibernate.Linq.QueryOptions/'<>c__DisplayClass9'::'<SetCacheRegion>b__8'(class [NHibernate]NHibernate.ICriteria)
    IL_001c:  newobj     instance void class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria>::.ctor(object,
                                                                                                                      native int)
    IL_0021:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Combine(class [mscorlib]System.Delegate,
                                                                                            class [mscorlib]System.Delegate)
    IL_0026:  castclass  class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria>
    IL_002b:  stfld      class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria> NHibernate.Linq.QueryOptions::action
    IL_0030:  ldarg.0
    IL_0031:  stloc.1
    IL_0032:  br.s       IL_0034

    IL_0034:  ldloc.1
    IL_0035:  ret
  } // end of method QueryOptions::SetCacheRegion

  .method public hidebysig instance class NHibernate.Linq.QueryOptions 
          SetComment(string comment) cil managed
  {
    // Code size       54 (0x36)
    .maxstack  5
    .locals init (class NHibernate.Linq.QueryOptions/'<>c__DisplayClassc' V_0,
             class NHibernate.Linq.QueryOptions V_1)
    IL_0000:  newobj     instance void NHibernate.Linq.QueryOptions/'<>c__DisplayClassc'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      string NHibernate.Linq.QueryOptions/'<>c__DisplayClassc'::comment
    IL_000d:  nop
    IL_000e:  ldarg.0
    IL_000f:  dup
    IL_0010:  ldfld      class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria> NHibernate.Linq.QueryOptions::action
    IL_0015:  ldloc.0
    IL_0016:  ldftn      instance void NHibernate.Linq.QueryOptions/'<>c__DisplayClassc'::'<SetComment>b__b'(class [NHibernate]NHibernate.ICriteria)
    IL_001c:  newobj     instance void class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria>::.ctor(object,
                                                                                                                      native int)
    IL_0021:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Combine(class [mscorlib]System.Delegate,
                                                                                            class [mscorlib]System.Delegate)
    IL_0026:  castclass  class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria>
    IL_002b:  stfld      class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria> NHibernate.Linq.QueryOptions::action
    IL_0030:  ldarg.0
    IL_0031:  stloc.1
    IL_0032:  br.s       IL_0034

    IL_0034:  ldloc.1
    IL_0035:  ret
  } // end of method QueryOptions::SetComment

  .method public hidebysig instance class NHibernate.Linq.QueryOptions 
          RegisterCustomAction(class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria> customAction) cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  3
    .locals init (class NHibernate.Linq.QueryOptions V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  dup
    IL_0003:  ldfld      class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria> NHibernate.Linq.QueryOptions::action
    IL_0008:  ldarg.1
    IL_0009:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Combine(class [mscorlib]System.Delegate,
                                                                                            class [mscorlib]System.Delegate)
    IL_000e:  castclass  class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria>
    IL_0013:  stfld      class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria> NHibernate.Linq.QueryOptions::action
    IL_0018:  ldarg.0
    IL_0019:  stloc.0
    IL_001a:  br.s       IL_001c

    IL_001c:  ldloc.0
    IL_001d:  ret
  } // end of method QueryOptions::RegisterCustomAction

  .method assembly hidebysig instance void 
          Execute(class [NHibernate]NHibernate.ICriteria criteria) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria> NHibernate.Linq.QueryOptions::action
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance void class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria>::Invoke(!0)
    IL_000d:  nop
    IL_000e:  ret
  } // end of method QueryOptions::Execute

  .method public hidebysig instance void 
          AddExpansion(string path) cil managed
  {
    // Code size       50 (0x32)
    .maxstack  5
    .locals init (class NHibernate.Linq.QueryOptions/'<>c__DisplayClassf' V_0)
    IL_0000:  newobj     instance void NHibernate.Linq.QueryOptions/'<>c__DisplayClassf'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      string NHibernate.Linq.QueryOptions/'<>c__DisplayClassf'::path
    IL_000d:  nop
    IL_000e:  ldarg.0
    IL_000f:  dup
    IL_0010:  ldfld      class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria> NHibernate.Linq.QueryOptions::action
    IL_0015:  ldloc.0
    IL_0016:  ldftn      instance void NHibernate.Linq.QueryOptions/'<>c__DisplayClassf'::'<AddExpansion>b__e'(class [NHibernate]NHibernate.ICriteria)
    IL_001c:  newobj     instance void class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria>::.ctor(object,
                                                                                                                      native int)
    IL_0021:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Combine(class [mscorlib]System.Delegate,
                                                                                            class [mscorlib]System.Delegate)
    IL_0026:  castclass  class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria>
    IL_002b:  stfld      class [mscorlib]System.Action`1<class [NHibernate]NHibernate.ICriteria> NHibernate.Linq.QueryOptions::action
    IL_0030:  nop
    IL_0031:  ret
  } // end of method QueryOptions::AddExpansion

  .method private hidebysig static void  '<.ctor>b__0'(class [NHibernate]NHibernate.ICriteria A_0) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method QueryOptions::'<.ctor>b__0'

} // end of class NHibernate.Linq.QueryOptions

.class private auto ansi '<PrivateImplementationDetails>{F233971D-B03F-42A4-937F-644633406AC4}'
       extends [mscorlib]System.Object
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field static assembly class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32> '$$method0x6000133-1'
  .field static assembly class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32> '$$method0x6000159-1'
  .field static assembly class [mscorlib]System.Collections.Generic.Dictionary`2<string,int32> '$$method0x600016a-1'
} // end of class '<PrivateImplementationDetails>{F233971D-B03F-42A4-937F-644633406AC4}'


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file C:\Projects\Foundation\Main\Packages\NHibernate.Linq.1.0\lib\NHibernate.Linq.res
