.class public final synthetic Lcom/appodeal/ads/l1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/l1;
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

    invoke-static {}, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->values()[Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->Appsflyer:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    invoke-virtual {v1}, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->Adjust:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    invoke-virtual {v1}, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->FacebookAnalytics:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    invoke-virtual {v1}, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->Firebase:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    invoke-virtual {v1}, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->StackAnalytics:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    invoke-virtual {v1}, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->SentryAnalytics:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    invoke-virtual {v1}, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sput-object v0, Lcom/appodeal/ads/l1$a;->$EnumSwitchMapping$0:[I

    return-void
.end method
