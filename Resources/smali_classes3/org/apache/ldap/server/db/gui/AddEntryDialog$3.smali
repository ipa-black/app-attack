.class final Lorg/apache/ldap/server/db/gui/AddEntryDialog$3;
.super Ljavax/swing/DefaultCellEditor;
.source "AddEntryDialog.java"


# static fields
.field private static final serialVersionUID:J = 0x2d32383635383233L


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/gui/AddEntryDialog;

.field private final synthetic val$l_textField:Ljavax/swing/JTextField;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/gui/AddEntryDialog;Ljavax/swing/JTextField;Ljavax/swing/JTextField;)V
    .locals 0

    .line 266
    invoke-direct {p0, p2}, Ljavax/swing/DefaultCellEditor;-><init>(Ljavax/swing/JTextField;)V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog$3;->this$0:Lorg/apache/ldap/server/db/gui/AddEntryDialog;

    iput-object p3, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog$3;->val$l_textField:Ljavax/swing/JTextField;

    return-void
.end method


# virtual methods
.method public getCellEditorValue()Ljava/lang/Object;
    .locals 3

    .line 274
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Editor returning \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog$3;->val$l_textField:Ljavax/swing/JTextField;

    invoke-virtual {v2}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 275
    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 274
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog$3;->val$l_textField:Ljavax/swing/JTextField;

    invoke-virtual {v0}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
