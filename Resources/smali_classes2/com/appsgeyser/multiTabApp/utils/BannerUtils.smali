.class public Lcom/appsgeyser/multiTabApp/utils/BannerUtils;
.super Ljava/lang/Object;
.source "BannerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDataTextHtmlUrl(Ljava/lang/String;)Z
    .locals 1

    .line 6
    const-string v0, "data:text/html"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
