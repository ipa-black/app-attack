.class Lorg/apache/ldap/server/db/gui/AddEntryDialog$PopupListener;
.super Ljava/awt/event/MouseAdapter;
.source "AddEntryDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ldap/server/db/gui/AddEntryDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PopupListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/gui/AddEntryDialog;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/gui/AddEntryDialog;)V
    .locals 0

    .line 285
    invoke-direct {p0}, Ljava/awt/event/MouseAdapter;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog$PopupListener;->this$0:Lorg/apache/ldap/server/db/gui/AddEntryDialog;

    return-void
.end method

.method private maybeShowPopup(Ljava/awt/event/MouseEvent;)V
    .locals 3

    .line 301
    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->isPopupTrigger()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog$PopupListener;->this$0:Lorg/apache/ldap/server/db/gui/AddEntryDialog;

    invoke-static {v0}, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->access$0(Lorg/apache/ldap/server/db/gui/AddEntryDialog;)Ljavax/swing/JPopupMenu;

    move-result-object v0

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getComponent()Ljava/awt/Component;

    move-result-object v1

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getX()I

    move-result v2

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getY()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Ljavax/swing/JPopupMenu;->show(Ljava/awt/Component;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public mousePressed(Ljava/awt/event/MouseEvent;)V
    .locals 0

    .line 289
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/gui/AddEntryDialog$PopupListener;->maybeShowPopup(Ljava/awt/event/MouseEvent;)V

    return-void
.end method

.method public mouseReleased(Ljava/awt/event/MouseEvent;)V
    .locals 0

    .line 295
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/gui/AddEntryDialog$PopupListener;->maybeShowPopup(Ljava/awt/event/MouseEvent;)V

    return-void
.end method
