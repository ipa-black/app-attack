.class public final synthetic Lcom/appodeal/ads/modules/libs/network/httpclients/ext/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/modules/libs/network/httpclients/ext/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;->values()[Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;->GET:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;->POST:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;->PUT:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;->DELETE:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sput-object v0, Lcom/appodeal/ads/modules/libs/network/httpclients/ext/a$a;->$EnumSwitchMapping$0:[I

    return-void
.end method
