.class public Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;
.super Ljava/lang/Object;
.source "AccessData.java"

# interfaces
.implements Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;


# instance fields
.field private active:Z

.field private allowPurchases:Z

.field private backgroundColor:Ljava/lang/String;

.field private buttonText:Ljava/lang/String;

.field private buttonTextColor:Ljava/lang/String;

.field private buttonTintColor:Ljava/lang/String;

.field private inappKey:Ljava/lang/String;

.field private licenseKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->active:Z

    .line 18
    iput-object p2, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->buttonText:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->buttonTintColor:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->buttonTextColor:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->backgroundColor:Ljava/lang/String;

    .line 22
    iput-object p6, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->licenseKey:Ljava/lang/String;

    .line 23
    iput-object p7, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->inappKey:Ljava/lang/String;

    .line 24
    iput-boolean p8, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->allowPurchases:Z

    return-void
.end method

.method public static parseFromJson(Ljava/lang/String;)Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;
    .locals 2

    .line 77
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 79
    const-class v1, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    return-object p0
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->backgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonText()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->buttonText:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonTextColor()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->buttonTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonTintColor()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->buttonTintColor:Ljava/lang/String;

    return-object v0
.end method

.method public getInappKey()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->inappKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLicenseKey()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->licenseKey:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->active:Z

    return v0
.end method

.method public isAllowPurchases()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->allowPurchases:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->active:Z

    return-void
.end method

.method public setAllowPurchases(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->allowPurchases:Z

    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->backgroundColor:Ljava/lang/String;

    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->buttonText:Ljava/lang/String;

    return-void
.end method

.method public setButtonTextColor(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->buttonTextColor:Ljava/lang/String;

    return-void
.end method

.method public setButtonTintColor(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->buttonTintColor:Ljava/lang/String;

    return-void
.end method

.method public setInappKey(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->inappKey:Ljava/lang/String;

    return-void
.end method

.method public setLicenseKey(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->licenseKey:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AuthData{active="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->active:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", buttonText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->buttonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', buttonTintColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->buttonTintColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', buttonTextColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->buttonTextColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', backgroundColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->backgroundColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', licenseKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->licenseKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', inappKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->inappKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
