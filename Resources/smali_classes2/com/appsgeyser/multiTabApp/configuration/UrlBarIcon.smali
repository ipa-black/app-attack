.class public Lcom/appsgeyser/multiTabApp/configuration/UrlBarIcon;
.super Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;
.source "UrlBarIcon.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private icon:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->ICON:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarIcon;->setType(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    .line 11
    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/configuration/UrlBarIcon;->icon:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/UrlBarIcon;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/UrlBarIcon;->icon:Ljava/lang/String;

    return-void
.end method
