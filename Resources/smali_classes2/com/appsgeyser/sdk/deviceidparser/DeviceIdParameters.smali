.class public Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;
.super Ljava/lang/Object;
.source "DeviceIdParameters.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private aId:Ljava/lang/String;

.field private advId:Ljava/lang/String;

.field private limitAdTrackingEnabledStates:Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->advId:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->aId:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->limitAdTrackingEnabledStates:Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->advId:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->aId:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->limitAdTrackingEnabledStates:Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->advId:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->aId:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->limitAdTrackingEnabledStates:Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 58
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAdvId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->advId:Ljava/lang/String;

    return-object v0
.end method

.method public getLimitAdTrackingEnabled()Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->limitAdTrackingEnabledStates:Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    return-object v0
.end method

.method public getaId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->aId:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->aId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->advId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->limitAdTrackingEnabledStates:Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setAdvId(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->advId:Ljava/lang/String;

    return-void
.end method

.method setLimitAdTrackingEnabled(Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->limitAdTrackingEnabledStates:Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    return-void
.end method

.method setaId(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->aId:Ljava/lang/String;

    return-void
.end method
