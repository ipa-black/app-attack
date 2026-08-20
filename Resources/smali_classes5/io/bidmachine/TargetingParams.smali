.class public final Lio/bidmachine/TargetingParams;
.super Lio/bidmachine/models/RequestParams;
.source "TargetingParams.java"

# interfaces
.implements Lio/bidmachine/models/ITargetingParams;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/models/RequestParams<",
        "Lio/bidmachine/TargetingParams;",
        ">;",
        "Lio/bidmachine/models/ITargetingParams<",
        "Lio/bidmachine/TargetingParams;",
        ">;"
    }
.end annotation


# static fields
.field static final DATA_ID_EXTERNAL_USER_ID:Ljava/lang/String; = "external_user_ids"


# instance fields
.field private birthdayYear:Ljava/lang/Integer;

.field private blockedParams:Lio/bidmachine/BlockedParams;

.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private deviceLocation:Landroid/location/Location;

.field private externalUserIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/ExternalUserId;",
            ">;"
        }
    .end annotation
.end field

.field private framework:Ljava/lang/String;

.field private gender:Lio/bidmachine/utils/Gender;

.field private isPaid:Ljava/lang/Boolean;

.field private keywords:[Ljava/lang/String;

.field private storeCategory:Ljava/lang/String;

.field private storeSubCategories:[Ljava/lang/String;

.field private storeUrl:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private zip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lio/bidmachine/models/RequestParams;-><init>()V

    return-void
.end method

.method private prepareBlockParams()V
    .locals 1

    .line 366
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Lio/bidmachine/BlockedParams;

    invoke-direct {v0}, Lio/bidmachine/BlockedParams;-><init>()V

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    :cond_0
    return-void
.end method


# virtual methods
.method public addBlockedAdvertiserDomain(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 1

    .line 151
    invoke-direct {p0}, Lio/bidmachine/TargetingParams;->prepareBlockParams()V

    .line 152
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    invoke-virtual {v0, p1}, Lio/bidmachine/BlockedParams;->addBlockedAdvertiserDomain(Ljava/lang/String;)Lio/bidmachine/BlockedParams;

    return-object p0
.end method

.method public bridge synthetic addBlockedAdvertiserDomain(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->addBlockedAdvertiserDomain(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public addBlockedAdvertiserIABCategory(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 1

    .line 144
    invoke-direct {p0}, Lio/bidmachine/TargetingParams;->prepareBlockParams()V

    .line 145
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    invoke-virtual {v0, p1}, Lio/bidmachine/BlockedParams;->addBlockedAdvertiserIABCategory(Ljava/lang/String;)Lio/bidmachine/BlockedParams;

    return-object p0
.end method

.method public bridge synthetic addBlockedAdvertiserIABCategory(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->addBlockedAdvertiserIABCategory(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public addBlockedApplication(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 1

    .line 137
    invoke-direct {p0}, Lio/bidmachine/TargetingParams;->prepareBlockParams()V

    .line 138
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    invoke-virtual {v0, p1}, Lio/bidmachine/BlockedParams;->addBlockedApplication(Ljava/lang/String;)Lio/bidmachine/BlockedParams;

    return-object p0
.end method

.method public bridge synthetic addBlockedApplication(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->addBlockedApplication(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method build(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$App$Builder;)V
    .locals 1

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setBundle(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 185
    :cond_0
    invoke-static {p1}, Lio/bidmachine/core/Utils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setVer(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 189
    :cond_1
    invoke-static {p1}, Lio/bidmachine/core/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 191
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setName(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 193
    :cond_2
    iget-object p1, p0, Lio/bidmachine/TargetingParams;->storeUrl:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 194
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setStoreurl(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 196
    :cond_3
    iget-object p1, p0, Lio/bidmachine/TargetingParams;->isPaid:Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setPaid(Z)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    return-void
.end method

.method build(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;)V
    .locals 1

    .line 279
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->country:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setCountry(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 282
    :cond_0
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->city:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 283
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setCity(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 285
    :cond_1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->zip:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 286
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setZip(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    :cond_2
    return-void
.end method

.method build(Lcom/explorestack/protobuf/adcom/Context$User$Builder;)V
    .locals 7

    .line 232
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->setId(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    .line 236
    :cond_0
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->birthdayYear:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->setYob(I)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    .line 240
    :cond_1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->gender:Lio/bidmachine/utils/Gender;

    if-eqz v0, :cond_2

    .line 241
    invoke-virtual {v0}, Lio/bidmachine/utils/Gender;->getOrtbValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->setGender(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    .line 244
    :cond_2
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->keywords:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    array-length v0, v0

    if-lez v0, :cond_5

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    iget-object v2, p0, Lio/bidmachine/TargetingParams;->keywords:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 248
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 252
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->setKeywords(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    .line 255
    :cond_5
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    .line 256
    invoke-virtual {p0, v0}, Lio/bidmachine/TargetingParams;->build(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;)V

    const/4 v2, 0x0

    .line 257
    invoke-static {v0, v2, v1}, Lio/bidmachine/utils/ProtoUtils;->fillGeoBuilder(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;Landroid/location/Location;Z)V

    .line 258
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->setGeo(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    .line 261
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->externalUserIdList:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 262
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    const-string v1, "external_user_ids"

    .line 263
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->setId(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lio/bidmachine/TargetingParams;->externalUserIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/ExternalUserId;

    .line 265
    invoke-virtual {v2}, Lio/bidmachine/ExternalUserId;->getSourceId()Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-virtual {v2}, Lio/bidmachine/ExternalUserId;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    .line 270
    :cond_7
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v4

    .line 271
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->setId(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v3

    .line 272
    invoke-virtual {v3, v2}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->setValue(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v2

    .line 270
    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->addSegment(Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    goto :goto_1

    .line 274
    :cond_8
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->addData(Lcom/explorestack/protobuf/adcom/Context$Data$Builder;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    :cond_9
    return-void
.end method

.method fillAppExtension(Lcom/explorestack/protobuf/Struct$Builder;)V
    .locals 6

    .line 200
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->storeCategory:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 202
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/TargetingParams;->storeCategory:Ljava/lang/String;

    .line 203
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    .line 201
    const-string v1, "storecat"

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 206
    :cond_0
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->storeSubCategories:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    .line 207
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->newBuilder()Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lio/bidmachine/TargetingParams;->storeSubCategories:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 209
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v5

    .line 210
    invoke-virtual {v5, v4}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v4

    .line 211
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v4

    .line 209
    invoke-virtual {v0, v4}, Lcom/explorestack/protobuf/ListValue$Builder;->addValues(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/ListValue$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 215
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ListValue$Builder;->build()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/Value$Builder;->setListValue(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    .line 213
    const-string v1, "storesubcat"

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 218
    :cond_2
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->framework:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 220
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/TargetingParams;->framework:Ljava/lang/String;

    .line 221
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    .line 219
    const-string v1, "fmwname"

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 225
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-double v1, v1

    .line 226
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    .line 224
    const-string v1, "apilevel"

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    return-void
.end method

.method getBirthdayYear()Ljava/lang/Integer;
    .locals 1

    .line 307
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->birthdayYear:Ljava/lang/Integer;

    return-object v0
.end method

.method getBlockedParams()Lio/bidmachine/BlockedParams;
    .locals 1

    .line 292
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    return-object v0
.end method

.method getCity()Ljava/lang/String;
    .locals 1

    .line 327
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->city:Ljava/lang/String;

    return-object v0
.end method

.method getCountry()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->country:Ljava/lang/String;

    return-object v0
.end method

.method getDeviceLocation()Landroid/location/Location;
    .locals 1

    .line 317
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->deviceLocation:Landroid/location/Location;

    return-object v0
.end method

.method getExternalUserIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/ExternalUserId;",
            ">;"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->externalUserIdList:Ljava/util/List;

    return-object v0
.end method

.method getFramework()Ljava/lang/String;
    .locals 1

    .line 352
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->framework:Ljava/lang/String;

    return-object v0
.end method

.method getGender()Lio/bidmachine/utils/Gender;
    .locals 1

    .line 302
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->gender:Lio/bidmachine/utils/Gender;

    return-object v0
.end method

.method getKeywords()[Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->keywords:[Ljava/lang/String;

    return-object v0
.end method

.method getPaid()Ljava/lang/Boolean;
    .locals 1

    .line 357
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->isPaid:Ljava/lang/Boolean;

    return-object v0
.end method

.method getStoreCategory()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->storeCategory:Ljava/lang/String;

    return-object v0
.end method

.method getStoreSubCategories()[Ljava/lang/String;
    .locals 1

    .line 347
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->storeSubCategories:[Ljava/lang/String;

    return-object v0
.end method

.method getStoreUrl()Ljava/lang/String;
    .locals 1

    .line 337
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->storeUrl:Ljava/lang/String;

    return-object v0
.end method

.method getUserId()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->userId:Ljava/lang/String;

    return-object v0
.end method

.method getZip()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->zip:Ljava/lang/String;

    return-object v0
.end method

.method public merge(Lio/bidmachine/TargetingParams;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->userId:Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->userId:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->userId:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->gender:Lio/bidmachine/utils/Gender;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->gender:Lio/bidmachine/utils/Gender;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/utils/Gender;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->gender:Lio/bidmachine/utils/Gender;

    .line 160
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->birthdayYear:Ljava/lang/Integer;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->birthdayYear:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->birthdayYear:Ljava/lang/Integer;

    .line 161
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->keywords:[Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->keywords:[Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->keywords:[Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->country:Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->country:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->country:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->city:Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->city:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->city:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->zip:Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->zip:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->zip:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->deviceLocation:Landroid/location/Location;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->deviceLocation:Landroid/location/Location;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->deviceLocation:Landroid/location/Location;

    .line 166
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->storeUrl:Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->storeUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->storeUrl:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->storeCategory:Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->storeCategory:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->storeCategory:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->storeSubCategories:[Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->storeSubCategories:[Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->storeSubCategories:[Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->framework:Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->framework:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->framework:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->isPaid:Ljava/lang/Boolean;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->isPaid:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->isPaid:Ljava/lang/Boolean;

    .line 171
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->externalUserIdList:Ljava/util/List;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->externalUserIdList:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->externalUserIdList:Ljava/util/List;

    .line 172
    iget-object v0, p1, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lio/bidmachine/BlockedParams;

    invoke-direct {v0}, Lio/bidmachine/BlockedParams;-><init>()V

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    .line 176
    :cond_0
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    iget-object p1, p1, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    invoke-virtual {v0, p1}, Lio/bidmachine/BlockedParams;->merge(Lio/bidmachine/BlockedParams;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic merge(Lio/bidmachine/models/RequestParams;)V
    .locals 0

    .line 25
    check-cast p1, Lio/bidmachine/TargetingParams;

    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->merge(Lio/bidmachine/TargetingParams;)V

    return-void
.end method

.method public setBirthdayYear(Ljava/lang/Integer;)Lio/bidmachine/TargetingParams;
    .locals 1

    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/bidmachine/core/Utils;->isYearValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    const-string p1, "Birthday Year should be 4-digit integer, more or equal 1900 and less or equal than current year"

    invoke-static {p1}, Lio/bidmachine/core/Logger;->logError(Ljava/lang/String;)V

    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->birthdayYear:Ljava/lang/Integer;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic setBirthdayYear(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setBirthdayYear(Ljava/lang/Integer;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setCity(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 89
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->city:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setCity(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setCity(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setCountry(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 83
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->country:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setCountry(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setCountry(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setDeviceLocation(Landroid/location/Location;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 77
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->deviceLocation:Landroid/location/Location;

    return-object p0
.end method

.method public bridge synthetic setDeviceLocation(Landroid/location/Location;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setDeviceLocation(Landroid/location/Location;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setExternalUserIds(Ljava/util/List;)Lio/bidmachine/TargetingParams;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/ExternalUserId;",
            ">;)",
            "Lio/bidmachine/TargetingParams;"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->externalUserIdList:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic setExternalUserIds(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setExternalUserIds(Ljava/util/List;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setFramework(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 119
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->framework:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setFramework(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setFramework(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setGender(Lio/bidmachine/utils/Gender;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 54
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->gender:Lio/bidmachine/utils/Gender;

    return-object p0
.end method

.method public bridge synthetic setGender(Lio/bidmachine/utils/Gender;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setGender(Lio/bidmachine/utils/Gender;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public varargs setKeywords([Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 71
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->keywords:[Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setKeywords([Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setKeywords([Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setPaid(Ljava/lang/Boolean;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 125
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->isPaid:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setPaid(Ljava/lang/Boolean;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setPaid(Ljava/lang/Boolean;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setStoreCategory(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 107
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->storeCategory:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setStoreCategory(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setStoreCategory(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public varargs setStoreSubCategories([Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 113
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->storeSubCategories:[Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setStoreSubCategories([Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setStoreSubCategories([Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setStoreUrl(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 101
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->storeUrl:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setStoreUrl(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setStoreUrl(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setUserId(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 48
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setUserId(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setUserId(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setZip(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 95
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->zip:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setZip(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setZip(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method
