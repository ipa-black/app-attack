.class public Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;
.super Ljava/lang/Object;
.source "AdNetworkSdkModel.java"


# instance fields
.field private appId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_id"
    .end annotation
.end field

.field private bannerId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banner_id"
    .end annotation
.end field

.field private customPlacementId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "custom_placement_id"
    .end annotation
.end field

.field private isActive:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "active"
    .end annotation
.end field

.field private loadingTimeout:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "loading_timeout"
    .end annotation
.end field

.field private placementId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "placement_id"
    .end annotation
.end field

.field private priority:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "priority"
    .end annotation
.end field

.field private uniqueId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uniq_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->isActive:Z

    .line 39
    iput-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->placementId:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->bannerId:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->uniqueId:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->appId:Ljava/lang/String;

    .line 43
    iput-object p6, p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->customPlacementId:Ljava/lang/String;

    .line 44
    iput p7, p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->priority:I

    .line 45
    iput p8, p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->loadingTimeout:I

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerId()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->bannerId:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomPlacementId()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->customPlacementId:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadingTimeout()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->loadingTimeout:I

    return v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->priority:I

    return v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->isActive:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->isActive:Z

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->appId:Ljava/lang/String;

    return-void
.end method

.method public setBannerId(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->bannerId:Ljava/lang/String;

    return-void
.end method

.method public setCustomPlacementId(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->customPlacementId:Ljava/lang/String;

    return-void
.end method

.method public setLoadingTimeout(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->loadingTimeout:I

    return-void
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->placementId:Ljava/lang/String;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->priority:I

    return-void
.end method

.method public setUniqueId(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->uniqueId:Ljava/lang/String;

    return-void
.end method
