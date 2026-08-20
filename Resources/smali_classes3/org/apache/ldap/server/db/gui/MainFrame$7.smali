.class final Lorg/apache/ldap/server/db/gui/MainFrame$7;
.super Ljava/lang/Object;
.source "MainFrame.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/gui/MainFrame;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/gui/MainFrame;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/MainFrame$7;->this$0:Lorg/apache/ldap/server/db/gui/MainFrame;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 3

    .line 286
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "action command = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 286
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame$7;->this$0:Lorg/apache/ldap/server/db/gui/MainFrame;

    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/db/gui/MainFrame;->doFilterDialog(Ljava/lang/String;)V

    return-void
.end method
