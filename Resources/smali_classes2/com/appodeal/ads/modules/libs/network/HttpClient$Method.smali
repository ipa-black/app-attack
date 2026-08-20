.class public final enum Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/modules/libs/network/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;",
        "",
        "GET",
        "POST",
        "PUT",
        "DELETE",
        "apd_network"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final enum DELETE:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

.field public static final enum GET:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

.field public static final enum POST:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

.field public static final enum PUT:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

.field public static final synthetic a:[Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;->GET:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    new-instance v1, Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    const-string v2, "POST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;->POST:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    new-instance v2, Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    const-string v3, "PUT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;->PUT:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    new-instance v3, Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    const-string v4, "DELETE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;->DELETE:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    move-result-object v0

    .line 2
    sput-object v0, Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;->a:[Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;
    .locals 1

    const-class v0, Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    return-object p0
.end method

.method public static values()[Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;->a:[Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    return-object v0
.end method
