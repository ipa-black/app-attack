.class public Lcom/appsgeyser/multiTabApp/utils/UserAgentManager;
.super Ljava/lang/Object;
.source "UserAgentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/utils/UserAgentManager$NewApiWrapper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/appsgeyser/multiTabApp/utils/UserAgentManager$NewApiWrapper;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDesktopUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f12009b

    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
