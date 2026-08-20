.class final Lorg/apache/ldap/server/db/gui/MainFrame$4;
.super Ljava/lang/Object;
.source "MainFrame.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/gui/MainFrame;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/gui/MainFrame;)V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/MainFrame$4;->this$0:Lorg/apache/ldap/server/db/gui/MainFrame;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2

    .line 206
    new-instance p1, Lorg/apache/ldap/server/db/gui/AboutDialog;

    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame$4;->this$0:Lorg/apache/ldap/server/db/gui/MainFrame;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/server/db/gui/AboutDialog;-><init>(Ljava/awt/Frame;Z)V

    .line 207
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame$4;->this$0:Lorg/apache/ldap/server/db/gui/MainFrame;

    invoke-static {v0, p1}, Lorg/apache/ldap/server/db/gui/MainFrame;->access$1(Lorg/apache/ldap/server/db/gui/MainFrame;Ljava/awt/Window;)V

    .line 208
    invoke-virtual {p1, v1}, Lorg/apache/ldap/server/db/gui/AboutDialog;->setVisible(Z)V

    return-void
.end method
