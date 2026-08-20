.class synthetic Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$3;
.super Ljava/lang/Object;
.source "AppsgeyserServerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$appsgeyser$sdk$configuration$Constants$ReferrerInfoStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 340
    invoke-static {}, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->values()[Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$3;->$SwitchMap$com$appsgeyser$sdk$configuration$Constants$ReferrerInfoStatus:[I

    :try_start_0
    sget-object v1, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->OK:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$3;->$SwitchMap$com$appsgeyser$sdk$configuration$Constants$ReferrerInfoStatus:[I

    sget-object v1, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->FEATURE_NOT_SUPPORTED:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$3;->$SwitchMap$com$appsgeyser$sdk$configuration$Constants$ReferrerInfoStatus:[I

    sget-object v1, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->UNAVAILABLE:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$3;->$SwitchMap$com$appsgeyser$sdk$configuration$Constants$ReferrerInfoStatus:[I

    sget-object v1, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->REMOTE_EXCEPTION:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
