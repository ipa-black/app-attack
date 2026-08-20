.class public final Lio/bidmachine/SessionAdParams;
.super Lio/bidmachine/models/RequestParams;
.source "SessionAdParams.java"

# interfaces
.implements Lio/bidmachine/models/ISessionAdParams;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/models/RequestParams<",
        "Lio/bidmachine/SessionAdParams;",
        ">;",
        "Lio/bidmachine/models/ISessionAdParams<",
        "Lio/bidmachine/SessionAdParams;",
        ">;"
    }
.end annotation


# instance fields
.field private clickCount:I

.field private clickRate:Ljava/lang/Float;

.field private completedVideosCount:I

.field private completionRate:Ljava/lang/Float;

.field private impressionCount:Ljava/lang/Integer;

.field private isUserClickedOnLastAd:Ljava/lang/Boolean;

.field private lastAdDomain:Ljava/lang/String;

.field private lastBundle:Ljava/lang/String;

.field private sessionDuration:Ljava/lang/Integer;

.field private videoImpressionCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lio/bidmachine/models/RequestParams;-><init>()V

    return-void
.end method

.method private updateClickRate()V
    .locals 2

    .line 244
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->impressionCount:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    iget v0, p0, Lio/bidmachine/SessionAdParams;->clickCount:I

    int-to-float v0, v0

    iget-object v1, p0, Lio/bidmachine/SessionAdParams;->impressionCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/SessionAdParams;->clickRate:Ljava/lang/Float;

    :cond_1
    :goto_0
    return-void
.end method

.method private updateCompletionRate()V
    .locals 2

    .line 251
    iget v0, p0, Lio/bidmachine/SessionAdParams;->videoImpressionCount:I

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    iget v1, p0, Lio/bidmachine/SessionAdParams;->completedVideosCount:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/SessionAdParams;->completionRate:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method addClick()V
    .locals 2

    .line 207
    iget v0, p0, Lio/bidmachine/SessionAdParams;->clickCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/bidmachine/SessionAdParams;->clickCount:I

    .line 208
    invoke-direct {p0}, Lio/bidmachine/SessionAdParams;->updateClickRate()V

    .line 209
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/SessionAdParams;->isUserClickedOnLastAd:Ljava/lang/Boolean;

    return-void
.end method

.method addCompletedVideo()V
    .locals 1

    .line 226
    iget v0, p0, Lio/bidmachine/SessionAdParams;->completedVideosCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/SessionAdParams;->completedVideosCount:I

    .line 227
    invoke-direct {p0}, Lio/bidmachine/SessionAdParams;->updateCompletionRate()V

    return-void
.end method

.method addImpression()V
    .locals 2

    .line 161
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->impressionCount:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/SessionAdParams;->impressionCount:Ljava/lang/Integer;

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/SessionAdParams;->impressionCount:Ljava/lang/Integer;

    .line 166
    :goto_0
    invoke-direct {p0}, Lio/bidmachine/SessionAdParams;->updateClickRate()V

    return-void
.end method

.method addVideoImpression()V
    .locals 1

    .line 217
    iget v0, p0, Lio/bidmachine/SessionAdParams;->videoImpressionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/SessionAdParams;->videoImpressionCount:I

    .line 218
    invoke-direct {p0}, Lio/bidmachine/SessionAdParams;->updateCompletionRate()V

    return-void
.end method

.method clear()V
    .locals 1

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Lio/bidmachine/SessionAdParams;->sessionDuration:Ljava/lang/Integer;

    .line 232
    iput-object v0, p0, Lio/bidmachine/SessionAdParams;->impressionCount:Ljava/lang/Integer;

    .line 233
    iput-object v0, p0, Lio/bidmachine/SessionAdParams;->clickRate:Ljava/lang/Float;

    .line 234
    iput-object v0, p0, Lio/bidmachine/SessionAdParams;->isUserClickedOnLastAd:Ljava/lang/Boolean;

    .line 235
    iput-object v0, p0, Lio/bidmachine/SessionAdParams;->completionRate:Ljava/lang/Float;

    .line 236
    iput-object v0, p0, Lio/bidmachine/SessionAdParams;->lastBundle:Ljava/lang/String;

    .line 237
    iput-object v0, p0, Lio/bidmachine/SessionAdParams;->lastAdDomain:Ljava/lang/String;

    const/4 v0, 0x0

    .line 238
    iput v0, p0, Lio/bidmachine/SessionAdParams;->clickCount:I

    .line 239
    iput v0, p0, Lio/bidmachine/SessionAdParams;->videoImpressionCount:I

    .line 240
    iput v0, p0, Lio/bidmachine/SessionAdParams;->completedVideosCount:I

    return-void
.end method

.method fillSessionPlacementData(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->impressionCount:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->setImpdepth(I)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    .line 133
    :cond_0
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->lastBundle:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->setLastbundle(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    .line 136
    :cond_1
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->lastAdDomain:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->setLastadomain(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    .line 139
    :cond_2
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->clickRate:Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 140
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->setClickrate(F)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    .line 142
    :cond_3
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->isUserClickedOnLastAd:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 143
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->setLastclick(Z)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    .line 145
    :cond_4
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->completionRate:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 146
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->setCompletionrate(F)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    :cond_5
    return-void
.end method

.method fillUserExtension(Lcom/explorestack/protobuf/Struct$Builder;)V
    .locals 3

    .line 85
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->sessionDuration:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/SessionAdParams;->sessionDuration:Ljava/lang/Integer;

    .line 88
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    .line 86
    const-string v1, "sessionduration"

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 91
    :cond_0
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->impressionCount:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 93
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/SessionAdParams;->impressionCount:Ljava/lang/Integer;

    .line 94
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    .line 92
    const-string v1, "impdepth"

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 97
    :cond_1
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->clickRate:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 99
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/SessionAdParams;->clickRate:Ljava/lang/Float;

    .line 100
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    .line 98
    const-string v1, "clickrate"

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 103
    :cond_2
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->isUserClickedOnLastAd:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 105
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lio/bidmachine/SessionAdParams;->isUserClickedOnLastAd:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_3
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    .line 104
    const-string v1, "lastclick"

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 109
    :cond_4
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->completionRate:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 111
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/SessionAdParams;->completionRate:Ljava/lang/Float;

    .line 112
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    .line 110
    const-string v1, "completionrate"

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 115
    :cond_5
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->lastBundle:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 117
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/SessionAdParams;->lastBundle:Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    .line 116
    const-string v1, "lastbundle"

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 121
    :cond_6
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->lastAdDomain:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 123
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/SessionAdParams;->lastAdDomain:Ljava/lang/String;

    .line 124
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    .line 122
    const-string v1, "lastadomain"

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    :cond_7
    return-void
.end method

.method getClickCount()I
    .locals 1

    .line 203
    iget v0, p0, Lio/bidmachine/SessionAdParams;->clickCount:I

    return v0
.end method

.method getClickRate()Ljava/lang/Float;
    .locals 1

    .line 171
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->clickRate:Ljava/lang/Float;

    return-object v0
.end method

.method getCompletedVideosCount()I
    .locals 1

    .line 222
    iget v0, p0, Lio/bidmachine/SessionAdParams;->completedVideosCount:I

    return v0
.end method

.method getCompletionRate()Ljava/lang/Float;
    .locals 1

    .line 181
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->completionRate:Ljava/lang/Float;

    return-object v0
.end method

.method getImpressionCount()Ljava/lang/Integer;
    .locals 1

    .line 157
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->impressionCount:Ljava/lang/Integer;

    return-object v0
.end method

.method getLastAdDomain()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->lastAdDomain:Ljava/lang/String;

    return-object v0
.end method

.method getLastBundle()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->lastBundle:Ljava/lang/String;

    return-object v0
.end method

.method getSessionDuration()Ljava/lang/Integer;
    .locals 1

    .line 152
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->sessionDuration:Ljava/lang/Integer;

    return-object v0
.end method

.method getUserClickedOnLastAd()Ljava/lang/Boolean;
    .locals 1

    .line 176
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->isUserClickedOnLastAd:Ljava/lang/Boolean;

    return-object v0
.end method

.method getVideoImpressionCount()I
    .locals 1

    .line 213
    iget v0, p0, Lio/bidmachine/SessionAdParams;->videoImpressionCount:I

    return v0
.end method

.method public merge(Lio/bidmachine/SessionAdParams;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->sessionDuration:Ljava/lang/Integer;

    iget-object v1, p1, Lio/bidmachine/SessionAdParams;->sessionDuration:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lio/bidmachine/SessionAdParams;->sessionDuration:Ljava/lang/Integer;

    .line 78
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->impressionCount:Ljava/lang/Integer;

    iget-object v1, p1, Lio/bidmachine/SessionAdParams;->impressionCount:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lio/bidmachine/SessionAdParams;->impressionCount:Ljava/lang/Integer;

    .line 79
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->clickRate:Ljava/lang/Float;

    iget-object v1, p1, Lio/bidmachine/SessionAdParams;->clickRate:Ljava/lang/Float;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, p0, Lio/bidmachine/SessionAdParams;->clickRate:Ljava/lang/Float;

    .line 80
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->isUserClickedOnLastAd:Ljava/lang/Boolean;

    iget-object v1, p1, Lio/bidmachine/SessionAdParams;->isUserClickedOnLastAd:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lio/bidmachine/SessionAdParams;->isUserClickedOnLastAd:Ljava/lang/Boolean;

    .line 81
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->completionRate:Ljava/lang/Float;

    iget-object p1, p1, Lio/bidmachine/SessionAdParams;->completionRate:Ljava/lang/Float;

    invoke-static {v0, p1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    iput-object p1, p0, Lio/bidmachine/SessionAdParams;->completionRate:Ljava/lang/Float;

    return-void
.end method

.method public bridge synthetic merge(Lio/bidmachine/models/RequestParams;)V
    .locals 0

    .line 15
    check-cast p1, Lio/bidmachine/SessionAdParams;

    invoke-virtual {p0, p1}, Lio/bidmachine/SessionAdParams;->merge(Lio/bidmachine/SessionAdParams;)V

    return-void
.end method

.method public setClickRate(Ljava/lang/Float;)Lio/bidmachine/SessionAdParams;
    .locals 2

    if-eqz p1, :cond_1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    const-string p1, "click rate be between 0 and 100"

    invoke-static {p1}, Lio/bidmachine/core/Logger;->logError(Ljava/lang/String;)V

    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    iput-object p1, p0, Lio/bidmachine/SessionAdParams;->clickRate:Ljava/lang/Float;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic setClickRate(Ljava/lang/Float;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lio/bidmachine/SessionAdParams;->setClickRate(Ljava/lang/Float;)Lio/bidmachine/SessionAdParams;

    move-result-object p1

    return-object p1
.end method

.method public setCompletionRate(Ljava/lang/Float;)Lio/bidmachine/SessionAdParams;
    .locals 2

    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    const-string p1, "click rate be between 0 and 100"

    invoke-static {p1}, Lio/bidmachine/core/Logger;->logError(Ljava/lang/String;)V

    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    iput-object p1, p0, Lio/bidmachine/SessionAdParams;->completionRate:Ljava/lang/Float;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic setCompletionRate(Ljava/lang/Float;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lio/bidmachine/SessionAdParams;->setCompletionRate(Ljava/lang/Float;)Lio/bidmachine/SessionAdParams;

    move-result-object p1

    return-object p1
.end method

.method public setImpressionCount(Ljava/lang/Integer;)Lio/bidmachine/SessionAdParams;
    .locals 1

    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    const-string p1, "impression count shouldn\'t be negative"

    invoke-static {p1}, Lio/bidmachine/core/Logger;->logError(Ljava/lang/String;)V

    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    iput-object p1, p0, Lio/bidmachine/SessionAdParams;->impressionCount:Ljava/lang/Integer;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic setImpressionCount(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lio/bidmachine/SessionAdParams;->setImpressionCount(Ljava/lang/Integer;)Lio/bidmachine/SessionAdParams;

    move-result-object p1

    return-object p1
.end method

.method public setIsUserClickedOnLastAd(Ljava/lang/Boolean;)Lio/bidmachine/SessionAdParams;
    .locals 0

    .line 61
    iput-object p1, p0, Lio/bidmachine/SessionAdParams;->isUserClickedOnLastAd:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setIsUserClickedOnLastAd(Ljava/lang/Boolean;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lio/bidmachine/SessionAdParams;->setIsUserClickedOnLastAd(Ljava/lang/Boolean;)Lio/bidmachine/SessionAdParams;

    move-result-object p1

    return-object p1
.end method

.method setLastAdDomain(Ljava/lang/String;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lio/bidmachine/SessionAdParams;->lastAdDomain:Ljava/lang/String;

    return-void
.end method

.method setLastBundle(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lio/bidmachine/SessionAdParams;->lastBundle:Ljava/lang/String;

    return-void
.end method

.method public setSessionDuration(Ljava/lang/Integer;)Lio/bidmachine/SessionAdParams;
    .locals 1

    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    const-string p1, "session duration shouldn\'t be negative"

    invoke-static {p1}, Lio/bidmachine/core/Logger;->logError(Ljava/lang/String;)V

    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    iput-object p1, p0, Lio/bidmachine/SessionAdParams;->sessionDuration:Ljava/lang/Integer;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic setSessionDuration(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lio/bidmachine/SessionAdParams;->setSessionDuration(Ljava/lang/Integer;)Lio/bidmachine/SessionAdParams;

    move-result-object p1

    return-object p1
.end method
