.class synthetic Lcom/appsgeyser/sdk/ads/sdk/AppNextSdkWrapper$1;
.super Ljava/lang/Object;
.source "AppNextSdkWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/ads/sdk/AppNextSdkWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$appsgeyser$sdk$ads$sdk$SdkWrapper$AdType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    invoke-static {}, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper$AdType;->values()[Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper$AdType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/appsgeyser/sdk/ads/sdk/AppNextSdkWrapper$1;->$SwitchMap$com$appsgeyser$sdk$ads$sdk$SdkWrapper$AdType:[I

    :try_start_0
    sget-object v1, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper$AdType;->FULLSCREEN:Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper$AdType;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper$AdType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/appsgeyser/sdk/ads/sdk/AppNextSdkWrapper$1;->$SwitchMap$com$appsgeyser$sdk$ads$sdk$SdkWrapper$AdType:[I

    sget-object v1, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper$AdType;->NATIVE:Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper$AdType;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper$AdType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
