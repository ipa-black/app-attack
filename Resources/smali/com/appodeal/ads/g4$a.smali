.class public final synthetic Lcom/appodeal/ads/g4$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/g4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    invoke-static {}, Lcom/appodeal/ads/networking/binders/c;->values()[Lcom/appodeal/ads/networking/binders/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/appodeal/ads/networking/binders/c;->a:Ljava/util/Set;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/appodeal/ads/networking/binders/c;->a:Ljava/util/Set;

    const/4 v1, 0x2

    aput v1, v0, v2

    sget-object v3, Lcom/appodeal/ads/networking/binders/c;->a:Ljava/util/Set;

    const/4 v3, 0x3

    aput v3, v0, v1

    sget-object v4, Lcom/appodeal/ads/networking/binders/c;->a:Ljava/util/Set;

    const/4 v4, 0x4

    aput v4, v0, v3

    sget-object v5, Lcom/appodeal/ads/networking/binders/c;->a:Ljava/util/Set;

    const/4 v5, 0x5

    aput v5, v0, v4

    sget-object v6, Lcom/appodeal/ads/networking/binders/c;->a:Ljava/util/Set;

    const/4 v6, 0x6

    aput v6, v0, v5

    sget-object v7, Lcom/appodeal/ads/networking/binders/c;->a:Ljava/util/Set;

    const/4 v7, 0x7

    aput v7, v0, v6

    sget-object v8, Lcom/appodeal/ads/networking/binders/c;->a:Ljava/util/Set;

    const/16 v8, 0x8

    aput v8, v0, v7

    sget-object v7, Lcom/appodeal/ads/networking/binders/c;->a:Ljava/util/Set;

    const/16 v7, 0x9

    aput v7, v0, v8

    sget-object v8, Lcom/appodeal/ads/networking/binders/c;->a:Ljava/util/Set;

    const/16 v8, 0xa

    aput v8, v0, v7

    sget-object v7, Lcom/appodeal/ads/networking/binders/c;->a:Ljava/util/Set;

    const/16 v7, 0xb

    aput v7, v0, v8

    sget-object v8, Lcom/appodeal/ads/networking/binders/c;->a:Ljava/util/Set;

    const/16 v8, 0xc

    aput v8, v0, v7

    sget-object v7, Lcom/appodeal/ads/networking/binders/c;->a:Ljava/util/Set;

    const/16 v7, 0xd

    aput v7, v0, v8

    sget-object v8, Lcom/appodeal/ads/networking/binders/c;->a:Ljava/util/Set;

    const/16 v8, 0xe

    aput v8, v0, v7

    sput-object v0, Lcom/appodeal/ads/g4$a;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->values()[Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v7, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Banner:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    invoke-virtual {v7}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->ordinal()I

    move-result v7

    aput v2, v0, v7

    sget-object v2, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Mrec:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    invoke-virtual {v2}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->ordinal()I

    move-result v2

    aput v1, v0, v2

    sget-object v1, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Interstitial:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    invoke-virtual {v1}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Video:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    invoke-virtual {v1}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Rewarded:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    invoke-virtual {v1}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v1, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Native:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    invoke-virtual {v1}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sput-object v0, Lcom/appodeal/ads/g4$a;->$EnumSwitchMapping$1:[I

    return-void
.end method
