.class synthetic Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$3;
.super Ljava/lang/Object;
.source "IronSourceNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$appodeal$ads$utils$app$AppState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    invoke-static {}, Lcom/appodeal/ads/utils/app/AppState;->values()[Lcom/appodeal/ads/utils/app/AppState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$3;->$SwitchMap$com$appodeal$ads$utils$app$AppState:[I

    :try_start_0
    sget-object v1, Lcom/appodeal/ads/utils/app/AppState;->Resumed:Lcom/appodeal/ads/utils/app/AppState;

    invoke-virtual {v1}, Lcom/appodeal/ads/utils/app/AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$3;->$SwitchMap$com$appodeal$ads$utils$app$AppState:[I

    sget-object v1, Lcom/appodeal/ads/utils/app/AppState;->Paused:Lcom/appodeal/ads/utils/app/AppState;

    invoke-virtual {v1}, Lcom/appodeal/ads/utils/app/AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
