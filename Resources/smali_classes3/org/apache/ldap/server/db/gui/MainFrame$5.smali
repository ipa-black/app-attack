.class final Lorg/apache/ldap/server/db/gui/MainFrame$5;
.super Ljava/awt/event/WindowAdapter;
.source "MainFrame.java"


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/gui/MainFrame;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/gui/MainFrame;)V
    .locals 0

    .line 227
    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/MainFrame$5;->this$0:Lorg/apache/ldap/server/db/gui/MainFrame;

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 0

    .line 231
    iget-object p1, p0, Lorg/apache/ldap/server/db/gui/MainFrame$5;->this$0:Lorg/apache/ldap/server/db/gui/MainFrame;

    invoke-static {p1}, Lorg/apache/ldap/server/db/gui/MainFrame;->access$0(Lorg/apache/ldap/server/db/gui/MainFrame;)V

    return-void
.end method
