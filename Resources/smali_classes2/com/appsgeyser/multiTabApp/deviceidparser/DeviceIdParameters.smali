.class public Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;
.super Ljava/lang/Object;
.source "DeviceIdParameters.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private _advid:Ljava/lang/String;

.field private _aid:Ljava/lang/String;

.field _limitAdTrackingEnabled:Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;->_advid:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;->_aid:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;->_limitAdTrackingEnabled:Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;->_advid:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;->_aid:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;->_limitAdTrackingEnabled:Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;->_advid:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;->_aid:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;->_limitAdTrackingEnabled:Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 56
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAdvid()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;->_advid:Ljava/lang/String;

    return-object v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;->_aid:Ljava/lang/String;

    return-object v0
.end method

.method public getLimitAdTrackingEnabled()Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;->_limitAdTrackingEnabled:Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;->_aid:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;->_advid:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;->_limitAdTrackingEnabled:Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected setAdvid(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;->_advid:Ljava/lang/String;

    return-void
.end method

.method protected setAid(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;->_aid:Ljava/lang/String;

    return-void
.end method

.method public setLimitAdTrackingEnabled(Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;->_limitAdTrackingEnabled:Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

    return-void
.end method
