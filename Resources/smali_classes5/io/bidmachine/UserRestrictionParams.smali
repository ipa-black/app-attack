.class final Lio/bidmachine/UserRestrictionParams;
.super Ljava/lang/Object;
.source "UserRestrictionParams.java"

# interfaces
.implements Lio/bidmachine/models/IUserRestrictionsParams;
.implements Lio/bidmachine/models/DataRestrictions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/models/IUserRestrictionsParams<",
        "Lio/bidmachine/UserRestrictionParams;",
        ">;",
        "Lio/bidmachine/models/DataRestrictions;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private gdprConsentString:Ljava/lang/String;

.field private hasConsent:Ljava/lang/Boolean;

.field private hasCoppa:Ljava/lang/Boolean;

.field private subjectToGDPR:Ljava/lang/Boolean;

.field private usPrivacyString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private hasConsent()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lio/bidmachine/UserRestrictionParams;->hasConsent:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasCoppa()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lio/bidmachine/UserRestrictionParams;->hasCoppa:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private subjectToGDPR()Z
    .locals 3

    .line 80
    invoke-static {}, Lio/bidmachine/BidMachineImpl;->get()Lio/bidmachine/BidMachineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/BidMachineImpl;->getIabSharedPreference()Lio/bidmachine/IABSharedPreference;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lio/bidmachine/UserRestrictionParams;->subjectToGDPR:Ljava/lang/Boolean;

    .line 82
    invoke-virtual {v0}, Lio/bidmachine/IABSharedPreference;->getTcfGdprApplies()Ljava/lang/Boolean;

    move-result-object v2

    .line 83
    invoke-virtual {v0}, Lio/bidmachine/IABSharedPreference;->getSubjectToGDPR()Ljava/lang/Boolean;

    move-result-object v0

    .line 81
    invoke-static {v1, v2, v0}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method build(Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Lio/bidmachine/UserRestrictionParams;->subjectToGDPR()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->setGdpr(Z)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    .line 27
    invoke-direct {p0}, Lio/bidmachine/UserRestrictionParams;->hasCoppa()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->setCoppa(Z)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    .line 29
    invoke-virtual {p0}, Lio/bidmachine/UserRestrictionParams;->getUSPrivacyString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    invoke-static {}, Lio/bidmachine/protobuf/RegsCcpaExtension;->newBuilder()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v1

    .line 33
    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->setUsPrivacy(Ljava/lang/String;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->build()Lio/bidmachine/protobuf/RegsCcpaExtension;

    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    :cond_0
    return-void
.end method

.method build(Lcom/explorestack/protobuf/adcom/Context$User$Builder;)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lio/bidmachine/UserRestrictionParams;->getIABGDPRString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->setConsent(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    return-void
.end method

.method public canSendDeviceInfo()Z
    .locals 1

    .line 107
    invoke-direct {p0}, Lio/bidmachine/UserRestrictionParams;->hasCoppa()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public canSendGeoPosition()Z
    .locals 1

    .line 97
    invoke-direct {p0}, Lio/bidmachine/UserRestrictionParams;->hasCoppa()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/bidmachine/UserRestrictionParams;->isUserGdprProtected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canSendIfa()Z
    .locals 1

    .line 112
    invoke-virtual {p0}, Lio/bidmachine/UserRestrictionParams;->isUserGdprProtected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public canSendUserInfo()Z
    .locals 1

    .line 102
    invoke-direct {p0}, Lio/bidmachine/UserRestrictionParams;->hasCoppa()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/bidmachine/UserRestrictionParams;->isUserGdprProtected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method fill(Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Lio/bidmachine/UserRestrictionParams;->subjectToGDPR()Z

    move-result v0

    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->setGdpr(Z)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    .line 45
    invoke-virtual {p0}, Lio/bidmachine/UserRestrictionParams;->getIABGDPRString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->setConsent(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    .line 47
    invoke-virtual {p0}, Lio/bidmachine/UserRestrictionParams;->getUSPrivacyString()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->setCcpa(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    :cond_0
    return-void
.end method

.method public getIABGDPRString()Ljava/lang/String;
    .locals 3

    .line 163
    invoke-static {}, Lio/bidmachine/BidMachineImpl;->get()Lio/bidmachine/BidMachineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/BidMachineImpl;->getIabSharedPreference()Lio/bidmachine/IABSharedPreference;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lio/bidmachine/UserRestrictionParams;->gdprConsentString:Ljava/lang/String;

    .line 165
    invoke-virtual {v0}, Lio/bidmachine/IABSharedPreference;->getTcfTcString()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {v0}, Lio/bidmachine/IABSharedPreference;->getGDPRConsentString()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v1, v2, v0}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    invoke-direct {p0}, Lio/bidmachine/UserRestrictionParams;->hasConsent()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getUSPrivacyString()Ljava/lang/String;
    .locals 2

    .line 138
    iget-object v0, p0, Lio/bidmachine/UserRestrictionParams;->usPrivacyString:Ljava/lang/String;

    .line 139
    invoke-static {}, Lio/bidmachine/BidMachineImpl;->get()Lio/bidmachine/BidMachineImpl;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/BidMachineImpl;->getIabSharedPreference()Lio/bidmachine/IABSharedPreference;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/IABSharedPreference;->getUSPrivacyString()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isUserAgeRestricted()Z
    .locals 1

    .line 132
    invoke-direct {p0}, Lio/bidmachine/UserRestrictionParams;->hasCoppa()Z

    move-result v0

    return v0
.end method

.method public isUserGdprProtected()Z
    .locals 1

    .line 127
    invoke-direct {p0}, Lio/bidmachine/UserRestrictionParams;->subjectToGDPR()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/bidmachine/UserRestrictionParams;->hasConsent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserHasCcpaConsent()Z
    .locals 5

    .line 153
    invoke-virtual {p0}, Lio/bidmachine/UserRestrictionParams;->getUSPrivacyString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x4e

    if-eq v3, v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x6e

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isUserHasConsent()Z
    .locals 1

    .line 122
    invoke-direct {p0}, Lio/bidmachine/UserRestrictionParams;->hasConsent()Z

    move-result v0

    return v0
.end method

.method public isUserInCcpaScope()Z
    .locals 4

    .line 144
    invoke-virtual {p0}, Lio/bidmachine/UserRestrictionParams;->getUSPrivacyString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    const-string v2, "---"

    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isUserInGdprScope()Z
    .locals 1

    .line 117
    invoke-direct {p0}, Lio/bidmachine/UserRestrictionParams;->subjectToGDPR()Z

    move-result v0

    return v0
.end method

.method public setConsentConfig(ZLjava/lang/String;)Lio/bidmachine/UserRestrictionParams;
    .locals 0

    .line 56
    iput-object p2, p0, Lio/bidmachine/UserRestrictionParams;->gdprConsentString:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/UserRestrictionParams;->hasConsent:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setConsentConfig(ZLjava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/UserRestrictionParams;->setConsentConfig(ZLjava/lang/String;)Lio/bidmachine/UserRestrictionParams;

    move-result-object p1

    return-object p1
.end method

.method public setCoppa(Ljava/lang/Boolean;)Lio/bidmachine/UserRestrictionParams;
    .locals 0

    .line 69
    iput-object p1, p0, Lio/bidmachine/UserRestrictionParams;->hasCoppa:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setCoppa(Ljava/lang/Boolean;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lio/bidmachine/UserRestrictionParams;->setCoppa(Ljava/lang/Boolean;)Lio/bidmachine/UserRestrictionParams;

    move-result-object p1

    return-object p1
.end method

.method public setSubjectToGDPR(Ljava/lang/Boolean;)Lio/bidmachine/UserRestrictionParams;
    .locals 0

    .line 63
    iput-object p1, p0, Lio/bidmachine/UserRestrictionParams;->subjectToGDPR:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setSubjectToGDPR(Ljava/lang/Boolean;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lio/bidmachine/UserRestrictionParams;->setSubjectToGDPR(Ljava/lang/Boolean;)Lio/bidmachine/UserRestrictionParams;

    move-result-object p1

    return-object p1
.end method

.method public setUSPrivacyString(Ljava/lang/String;)Lio/bidmachine/UserRestrictionParams;
    .locals 0

    .line 75
    iput-object p1, p0, Lio/bidmachine/UserRestrictionParams;->usPrivacyString:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setUSPrivacyString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lio/bidmachine/UserRestrictionParams;->setUSPrivacyString(Ljava/lang/String;)Lio/bidmachine/UserRestrictionParams;

    move-result-object p1

    return-object p1
.end method
