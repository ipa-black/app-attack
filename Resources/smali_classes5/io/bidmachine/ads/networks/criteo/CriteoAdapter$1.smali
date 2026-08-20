.class synthetic Lio/bidmachine/ads/networks/criteo/CriteoAdapter$1;
.super Ljava/lang/Object;
.source "CriteoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/criteo/CriteoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$criteo$publisher$CriteoErrorCode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 133
    invoke-static {}, Lcom/criteo/publisher/CriteoErrorCode;->values()[Lcom/criteo/publisher/CriteoErrorCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/bidmachine/ads/networks/criteo/CriteoAdapter$1;->$SwitchMap$com$criteo$publisher$CriteoErrorCode:[I

    :try_start_0
    sget-object v1, Lcom/criteo/publisher/CriteoErrorCode;->ERROR_CODE_NO_FILL:Lcom/criteo/publisher/CriteoErrorCode;

    invoke-virtual {v1}, Lcom/criteo/publisher/CriteoErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/bidmachine/ads/networks/criteo/CriteoAdapter$1;->$SwitchMap$com$criteo$publisher$CriteoErrorCode:[I

    sget-object v1, Lcom/criteo/publisher/CriteoErrorCode;->ERROR_CODE_NETWORK_ERROR:Lcom/criteo/publisher/CriteoErrorCode;

    invoke-virtual {v1}, Lcom/criteo/publisher/CriteoErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
