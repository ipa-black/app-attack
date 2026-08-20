.class public final Lcom/appodeal/ads/api/Session$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Session.java"

# interfaces
.implements Lcom/appodeal/ads/api/SessionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/appodeal/ads/api/Session$Builder;",
        ">;",
        "Lcom/appodeal/ads/api/SessionOrBuilder;"
    }
.end annotation


# instance fields
.field private activeSessionId_:I

.field private activeSessionUptime_:J

.field private adStatsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/appodeal/ads/api/AdStats;",
            "Lcom/appodeal/ads/api/AdStats$Builder;",
            "Lcom/appodeal/ads/api/AdStatsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private adStats_:Lcom/appodeal/ads/api/AdStats;

.field private appSessionAverageLength_:J

.field private ext_:Ljava/lang/Object;

.field private monotonicAppSessionAverageLength_:J

.field private monotonicSessionUptime_:J

.field private segmentId_:I

.field private sessionId_:J

.field private sessionUptime_:J

.field private sessionUuid_:Ljava/lang/Object;

.field private test_:Z

.field private token_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 798
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1050
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->ext_:Ljava/lang/Object;

    .line 1146
    iput-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->token_:Ljava/lang/Object;

    .line 1285
    iput-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->sessionUuid_:Ljava/lang/Object;

    .line 799
    invoke-direct {p0}, Lcom/appodeal/ads/api/Session$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/api/Session$1;)V
    .locals 0

    .line 780
    invoke-direct {p0}, Lcom/appodeal/ads/api/Session$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 804
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1050
    const-string p1, ""

    iput-object p1, p0, Lcom/appodeal/ads/api/Session$Builder;->ext_:Ljava/lang/Object;

    .line 1146
    iput-object p1, p0, Lcom/appodeal/ads/api/Session$Builder;->token_:Ljava/lang/Object;

    .line 1285
    iput-object p1, p0, Lcom/appodeal/ads/api/Session$Builder;->sessionUuid_:Ljava/lang/Object;

    .line 805
    invoke-direct {p0}, Lcom/appodeal/ads/api/Session$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Session$1;)V
    .locals 0

    .line 780
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Session$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private getAdStatsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/appodeal/ads/api/AdStats;",
            "Lcom/appodeal/ads/api/AdStats$Builder;",
            "Lcom/appodeal/ads/api/AdStatsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1611
    iget-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->adStatsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1612
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1614
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->getAdStats()Lcom/appodeal/ads/api/AdStats;

    move-result-object v1

    .line 1615
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1616
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->adStatsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1617
    iput-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->adStats_:Lcom/appodeal/ads/api/AdStats;

    .line 1619
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->adStatsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 786
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Session_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 809
    invoke-static {}, Lcom/appodeal/ads/api/Session;->access$200()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Session$Builder;
    .locals 0

    .line 922
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Session$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 780
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Session$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 780
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Session$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/appodeal/ads/api/Session;
    .locals 2

    .line 861
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->buildPartial()Lcom/appodeal/ads/api/Session;

    move-result-object v0

    .line 862
    invoke-virtual {v0}, Lcom/appodeal/ads/api/Session;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 863
    :cond_0
    invoke-static {v0}, Lcom/appodeal/ads/api/Session$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->build()Lcom/appodeal/ads/api/Session;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->build()Lcom/appodeal/ads/api/Session;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appodeal/ads/api/Session;
    .locals 3

    .line 870
    new-instance v0, Lcom/appodeal/ads/api/Session;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/api/Session;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Session$1;)V

    .line 871
    iget-boolean v1, p0, Lcom/appodeal/ads/api/Session$Builder;->test_:Z

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Session;->access$402(Lcom/appodeal/ads/api/Session;Z)Z

    .line 872
    iget-object v1, p0, Lcom/appodeal/ads/api/Session$Builder;->ext_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Session;->access$502(Lcom/appodeal/ads/api/Session;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    iget-object v1, p0, Lcom/appodeal/ads/api/Session$Builder;->token_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Session;->access$602(Lcom/appodeal/ads/api/Session;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    iget-wide v1, p0, Lcom/appodeal/ads/api/Session$Builder;->sessionId_:J

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/api/Session;->access$702(Lcom/appodeal/ads/api/Session;J)J

    .line 875
    iget-object v1, p0, Lcom/appodeal/ads/api/Session$Builder;->sessionUuid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Session;->access$802(Lcom/appodeal/ads/api/Session;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    iget-wide v1, p0, Lcom/appodeal/ads/api/Session$Builder;->sessionUptime_:J

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/api/Session;->access$902(Lcom/appodeal/ads/api/Session;J)J

    .line 877
    iget v1, p0, Lcom/appodeal/ads/api/Session$Builder;->segmentId_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Session;->access$1002(Lcom/appodeal/ads/api/Session;I)I

    .line 878
    iget-object v1, p0, Lcom/appodeal/ads/api/Session$Builder;->adStatsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 879
    iget-object v1, p0, Lcom/appodeal/ads/api/Session$Builder;->adStats_:Lcom/appodeal/ads/api/AdStats;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Session;->access$1102(Lcom/appodeal/ads/api/Session;Lcom/appodeal/ads/api/AdStats;)Lcom/appodeal/ads/api/AdStats;

    goto :goto_0

    .line 881
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/api/AdStats;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Session;->access$1102(Lcom/appodeal/ads/api/Session;Lcom/appodeal/ads/api/AdStats;)Lcom/appodeal/ads/api/AdStats;

    .line 883
    :goto_0
    iget-wide v1, p0, Lcom/appodeal/ads/api/Session$Builder;->monotonicSessionUptime_:J

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/api/Session;->access$1202(Lcom/appodeal/ads/api/Session;J)J

    .line 884
    iget-wide v1, p0, Lcom/appodeal/ads/api/Session$Builder;->activeSessionUptime_:J

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/api/Session;->access$1302(Lcom/appodeal/ads/api/Session;J)J

    .line 885
    iget v1, p0, Lcom/appodeal/ads/api/Session$Builder;->activeSessionId_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Session;->access$1402(Lcom/appodeal/ads/api/Session;I)I

    .line 886
    iget-wide v1, p0, Lcom/appodeal/ads/api/Session$Builder;->appSessionAverageLength_:J

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/api/Session;->access$1502(Lcom/appodeal/ads/api/Session;J)J

    .line 887
    iget-wide v1, p0, Lcom/appodeal/ads/api/Session$Builder;->monotonicAppSessionAverageLength_:J

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/api/Session;->access$1602(Lcom/appodeal/ads/api/Session;J)J

    .line 888
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->buildPartial()Lcom/appodeal/ads/api/Session;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->buildPartial()Lcom/appodeal/ads/api/Session;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appodeal/ads/api/Session$Builder;
    .locals 5

    .line 814
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 815
    iput-boolean v0, p0, Lcom/appodeal/ads/api/Session$Builder;->test_:Z

    .line 817
    const-string v1, ""

    iput-object v1, p0, Lcom/appodeal/ads/api/Session$Builder;->ext_:Ljava/lang/Object;

    .line 819
    iput-object v1, p0, Lcom/appodeal/ads/api/Session$Builder;->token_:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    .line 821
    iput-wide v2, p0, Lcom/appodeal/ads/api/Session$Builder;->sessionId_:J

    .line 823
    iput-object v1, p0, Lcom/appodeal/ads/api/Session$Builder;->sessionUuid_:Ljava/lang/Object;

    .line 825
    iput-wide v2, p0, Lcom/appodeal/ads/api/Session$Builder;->sessionUptime_:J

    .line 827
    iput v0, p0, Lcom/appodeal/ads/api/Session$Builder;->segmentId_:I

    .line 829
    iget-object v1, p0, Lcom/appodeal/ads/api/Session$Builder;->adStatsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 830
    iput-object v4, p0, Lcom/appodeal/ads/api/Session$Builder;->adStats_:Lcom/appodeal/ads/api/AdStats;

    goto :goto_0

    .line 832
    :cond_0
    iput-object v4, p0, Lcom/appodeal/ads/api/Session$Builder;->adStats_:Lcom/appodeal/ads/api/AdStats;

    .line 833
    iput-object v4, p0, Lcom/appodeal/ads/api/Session$Builder;->adStatsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 835
    :goto_0
    iput-wide v2, p0, Lcom/appodeal/ads/api/Session$Builder;->monotonicSessionUptime_:J

    .line 837
    iput-wide v2, p0, Lcom/appodeal/ads/api/Session$Builder;->activeSessionUptime_:J

    .line 839
    iput v0, p0, Lcom/appodeal/ads/api/Session$Builder;->activeSessionId_:I

    .line 841
    iput-wide v2, p0, Lcom/appodeal/ads/api/Session$Builder;->appSessionAverageLength_:J

    .line 843
    iput-wide v2, p0, Lcom/appodeal/ads/api/Session$Builder;->monotonicAppSessionAverageLength_:J

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->clear()Lcom/appodeal/ads/api/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->clear()Lcom/appodeal/ads/api/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->clear()Lcom/appodeal/ads/api/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->clear()Lcom/appodeal/ads/api/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearActiveSessionId()Lcom/appodeal/ads/api/Session$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1746
    iput v0, p0, Lcom/appodeal/ads/api/Session$Builder;->activeSessionId_:I

    .line 1747
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public clearActiveSessionUptime()Lcom/appodeal/ads/api/Session$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    .line 1703
    iput-wide v0, p0, Lcom/appodeal/ads/api/Session$Builder;->activeSessionUptime_:J

    .line 1704
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAdStats()Lcom/appodeal/ads/api/Session$Builder;
    .locals 2

    .line 1564
    iget-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->adStatsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1565
    iput-object v1, p0, Lcom/appodeal/ads/api/Session$Builder;->adStats_:Lcom/appodeal/ads/api/AdStats;

    .line 1566
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    goto :goto_0

    .line 1568
    :cond_0
    iput-object v1, p0, Lcom/appodeal/ads/api/Session$Builder;->adStats_:Lcom/appodeal/ads/api/AdStats;

    .line 1569
    iput-object v1, p0, Lcom/appodeal/ads/api/Session$Builder;->adStatsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearAppSessionAverageLength()Lcom/appodeal/ads/api/Session$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1789
    iput-wide v0, p0, Lcom/appodeal/ads/api/Session$Builder;->appSessionAverageLength_:J

    .line 1790
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExt()Lcom/appodeal/ads/api/Session$Builder;
    .locals 1

    .line 1121
    invoke-static {}, Lcom/appodeal/ads/api/Session;->getDefaultInstance()Lcom/appodeal/ads/api/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Session;->getExt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->ext_:Ljava/lang/Object;

    .line 1122
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Session$Builder;
    .locals 0

    .line 905
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Session$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 780
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Session$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 780
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Session$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearMonotonicAppSessionAverageLength()Lcom/appodeal/ads/api/Session$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1832
    iput-wide v0, p0, Lcom/appodeal/ads/api/Session$Builder;->monotonicAppSessionAverageLength_:J

    .line 1833
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMonotonicSessionUptime()Lcom/appodeal/ads/api/Session$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1660
    iput-wide v0, p0, Lcom/appodeal/ads/api/Session$Builder;->monotonicSessionUptime_:J

    .line 1661
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Session$Builder;
    .locals 0

    .line 910
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Session$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 780
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Session$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 780
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Session$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 780
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Session$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearSegmentId()Lcom/appodeal/ads/api/Session$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1462
    iput v0, p0, Lcom/appodeal/ads/api/Session$Builder;->segmentId_:I

    .line 1463
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSessionId()Lcom/appodeal/ads/api/Session$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1280
    iput-wide v0, p0, Lcom/appodeal/ads/api/Session$Builder;->sessionId_:J

    .line 1281
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSessionUptime()Lcom/appodeal/ads/api/Session$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1419
    iput-wide v0, p0, Lcom/appodeal/ads/api/Session$Builder;->sessionUptime_:J

    .line 1420
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSessionUuid()Lcom/appodeal/ads/api/Session$Builder;
    .locals 1

    .line 1356
    invoke-static {}, Lcom/appodeal/ads/api/Session;->getDefaultInstance()Lcom/appodeal/ads/api/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Session;->getSessionUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->sessionUuid_:Ljava/lang/Object;

    .line 1357
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTest()Lcom/appodeal/ads/api/Session$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1045
    iput-boolean v0, p0, Lcom/appodeal/ads/api/Session$Builder;->test_:Z

    .line 1046
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public clearToken()Lcom/appodeal/ads/api/Session$Builder;
    .locals 1

    .line 1217
    invoke-static {}, Lcom/appodeal/ads/api/Session;->getDefaultInstance()Lcom/appodeal/ads/api/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Session;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->token_:Ljava/lang/Object;

    .line 1218
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/appodeal/ads/api/Session$Builder;
    .locals 1

    .line 894
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Session$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->clone()Lcom/appodeal/ads/api/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->clone()Lcom/appodeal/ads/api/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->clone()Lcom/appodeal/ads/api/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->clone()Lcom/appodeal/ads/api/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->clone()Lcom/appodeal/ads/api/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 780
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->clone()Lcom/appodeal/ads/api/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActiveSessionId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1719
    iget v0, p0, Lcom/appodeal/ads/api/Session$Builder;->activeSessionId_:I

    return v0
.end method

.method public getActiveSessionUptime()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1676
    iget-wide v0, p0, Lcom/appodeal/ads/api/Session$Builder;->activeSessionUptime_:J

    return-wide v0
.end method

.method public getAdStats()Lcom/appodeal/ads/api/AdStats;
    .locals 1

    .line 1490
    iget-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->adStatsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1491
    iget-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->adStats_:Lcom/appodeal/ads/api/AdStats;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/api/AdStats;->getDefaultInstance()Lcom/appodeal/ads/api/AdStats;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1493
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/AdStats;

    return-object v0
.end method

.method public getAdStatsBuilder()Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 1

    .line 1583
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    .line 1584
    invoke-direct {p0}, Lcom/appodeal/ads/api/Session$Builder;->getAdStatsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/AdStats$Builder;

    return-object v0
.end method

.method public getAdStatsOrBuilder()Lcom/appodeal/ads/api/AdStatsOrBuilder;
    .locals 1

    .line 1594
    iget-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->adStatsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 1595
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/AdStatsOrBuilder;

    return-object v0

    .line 1597
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->adStats_:Lcom/appodeal/ads/api/AdStats;

    if-nez v0, :cond_1

    .line 1598
    invoke-static {}, Lcom/appodeal/ads/api/AdStats;->getDefaultInstance()Lcom/appodeal/ads/api/AdStats;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getAppSessionAverageLength()J
    .locals 2

    .line 1762
    iget-wide v0, p0, Lcom/appodeal/ads/api/Session$Builder;->appSessionAverageLength_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Session;
    .locals 1

    .line 856
    invoke-static {}, Lcom/appodeal/ads/api/Session;->getDefaultInstance()Lcom/appodeal/ads/api/Session;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Session;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Session;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 851
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Session_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 2

    .line 1060
    iget-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->ext_:Ljava/lang/Object;

    .line 1061
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1062
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1064
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1065
    iput-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->ext_:Ljava/lang/Object;

    return-object v0

    .line 1068
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExtBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1081
    iget-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->ext_:Ljava/lang/Object;

    .line 1082
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1083
    check-cast v0, Ljava/lang/String;

    .line 1084
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1086
    iput-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->ext_:Ljava/lang/Object;

    return-object v0

    .line 1089
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getMonotonicAppSessionAverageLength()J
    .locals 2

    .line 1805
    iget-wide v0, p0, Lcom/appodeal/ads/api/Session$Builder;->monotonicAppSessionAverageLength_:J

    return-wide v0
.end method

.method public getMonotonicSessionUptime()J
    .locals 2

    .line 1633
    iget-wide v0, p0, Lcom/appodeal/ads/api/Session$Builder;->monotonicSessionUptime_:J

    return-wide v0
.end method

.method public getSegmentId()I
    .locals 1

    .line 1435
    iget v0, p0, Lcom/appodeal/ads/api/Session$Builder;->segmentId_:I

    return v0
.end method

.method public getSessionId()J
    .locals 2

    .line 1253
    iget-wide v0, p0, Lcom/appodeal/ads/api/Session$Builder;->sessionId_:J

    return-wide v0
.end method

.method public getSessionUptime()J
    .locals 2

    .line 1392
    iget-wide v0, p0, Lcom/appodeal/ads/api/Session$Builder;->sessionUptime_:J

    return-wide v0
.end method

.method public getSessionUuid()Ljava/lang/String;
    .locals 2

    .line 1295
    iget-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->sessionUuid_:Ljava/lang/Object;

    .line 1296
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1297
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1299
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1300
    iput-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->sessionUuid_:Ljava/lang/Object;

    return-object v0

    .line 1303
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSessionUuidBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1316
    iget-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->sessionUuid_:Ljava/lang/Object;

    .line 1317
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1318
    check-cast v0, Ljava/lang/String;

    .line 1319
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1321
    iput-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->sessionUuid_:Ljava/lang/Object;

    return-object v0

    .line 1324
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getTest()Z
    .locals 1

    .line 1018
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Session$Builder;->test_:Z

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2

    .line 1156
    iget-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->token_:Ljava/lang/Object;

    .line 1157
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1158
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1160
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1161
    iput-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->token_:Ljava/lang/Object;

    return-object v0

    .line 1164
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTokenBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1177
    iget-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->token_:Ljava/lang/Object;

    .line 1178
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1179
    check-cast v0, Ljava/lang/String;

    .line 1180
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1182
    iput-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->token_:Ljava/lang/Object;

    return-object v0

    .line 1185
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hasAdStats()Z
    .locals 1

    .line 1479
    iget-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->adStatsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->adStats_:Lcom/appodeal/ads/api/AdStats;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 792
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Session_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Session;

    const-class v2, Lcom/appodeal/ads/api/Session$Builder;

    .line 793
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeAdStats(Lcom/appodeal/ads/api/AdStats;)Lcom/appodeal/ads/api/Session$Builder;
    .locals 1

    .line 1542
    iget-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->adStatsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1543
    iget-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->adStats_:Lcom/appodeal/ads/api/AdStats;

    if-eqz v0, :cond_0

    .line 1545
    invoke-static {v0}, Lcom/appodeal/ads/api/AdStats;->newBuilder(Lcom/appodeal/ads/api/AdStats;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/api/AdStats$Builder;->mergeFrom(Lcom/appodeal/ads/api/AdStats;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats$Builder;->buildPartial()Lcom/appodeal/ads/api/AdStats;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Session$Builder;->adStats_:Lcom/appodeal/ads/api/AdStats;

    goto :goto_0

    .line 1547
    :cond_0
    iput-object p1, p0, Lcom/appodeal/ads/api/Session$Builder;->adStats_:Lcom/appodeal/ads/api/AdStats;

    .line 1549
    :goto_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    goto :goto_1

    .line 1551
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public mergeFrom(Lcom/appodeal/ads/api/Session;)Lcom/appodeal/ads/api/Session$Builder;
    .locals 4

    .line 935
    invoke-static {}, Lcom/appodeal/ads/api/Session;->getDefaultInstance()Lcom/appodeal/ads/api/Session;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 936
    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getTest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 937
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getTest()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Session$Builder;->setTest(Z)Lcom/appodeal/ads/api/Session$Builder;

    .line 939
    :cond_1
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getExt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 940
    invoke-static {p1}, Lcom/appodeal/ads/api/Session;->access$500(Lcom/appodeal/ads/api/Session;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->ext_:Ljava/lang/Object;

    .line 941
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    .line 943
    :cond_2
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 944
    invoke-static {p1}, Lcom/appodeal/ads/api/Session;->access$600(Lcom/appodeal/ads/api/Session;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->token_:Ljava/lang/Object;

    .line 945
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    .line 947
    :cond_3
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getSessionId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 948
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getSessionId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/api/Session$Builder;->setSessionId(J)Lcom/appodeal/ads/api/Session$Builder;

    .line 950
    :cond_4
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getSessionUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 951
    invoke-static {p1}, Lcom/appodeal/ads/api/Session;->access$800(Lcom/appodeal/ads/api/Session;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->sessionUuid_:Ljava/lang/Object;

    .line 952
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    .line 954
    :cond_5
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getSessionUptime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 955
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getSessionUptime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/api/Session$Builder;->setSessionUptime(J)Lcom/appodeal/ads/api/Session$Builder;

    .line 957
    :cond_6
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getSegmentId()I

    move-result v0

    if-eqz v0, :cond_7

    .line 958
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getSegmentId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Session$Builder;->setSegmentId(I)Lcom/appodeal/ads/api/Session$Builder;

    .line 960
    :cond_7
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->hasAdStats()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 961
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getAdStats()Lcom/appodeal/ads/api/AdStats;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Session$Builder;->mergeAdStats(Lcom/appodeal/ads/api/AdStats;)Lcom/appodeal/ads/api/Session$Builder;

    .line 963
    :cond_8
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getMonotonicSessionUptime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 964
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getMonotonicSessionUptime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/api/Session$Builder;->setMonotonicSessionUptime(J)Lcom/appodeal/ads/api/Session$Builder;

    .line 966
    :cond_9
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getActiveSessionUptime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    .line 967
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getActiveSessionUptime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/api/Session$Builder;->setActiveSessionUptime(J)Lcom/appodeal/ads/api/Session$Builder;

    .line 969
    :cond_a
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getActiveSessionId()I

    move-result v0

    if-eqz v0, :cond_b

    .line 970
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getActiveSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Session$Builder;->setActiveSessionId(I)Lcom/appodeal/ads/api/Session$Builder;

    .line 972
    :cond_b
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getAppSessionAverageLength()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    .line 973
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getAppSessionAverageLength()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/api/Session$Builder;->setAppSessionAverageLength(J)Lcom/appodeal/ads/api/Session$Builder;

    .line 975
    :cond_c
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getMonotonicAppSessionAverageLength()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 976
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getMonotonicAppSessionAverageLength()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/api/Session$Builder;->setMonotonicAppSessionAverageLength(J)Lcom/appodeal/ads/api/Session$Builder;

    .line 978
    :cond_d
    invoke-static {p1}, Lcom/appodeal/ads/api/Session;->access$1700(Lcom/appodeal/ads/api/Session;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Session$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Session$Builder;

    .line 979
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Session$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 995
    :try_start_0
    invoke-static {}, Lcom/appodeal/ads/api/Session;->access$1800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Session;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1001
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Session$Builder;->mergeFrom(Lcom/appodeal/ads/api/Session;)Lcom/appodeal/ads/api/Session$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 997
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/appodeal/ads/api/Session;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 998
    :try_start_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 1001
    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Session$Builder;->mergeFrom(Lcom/appodeal/ads/api/Session;)Lcom/appodeal/ads/api/Session$Builder;

    .line 1003
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Session$Builder;
    .locals 1

    .line 926
    instance-of v0, p1, Lcom/appodeal/ads/api/Session;

    if-eqz v0, :cond_0

    .line 927
    check-cast p1, Lcom/appodeal/ads/api/Session;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Session$Builder;->mergeFrom(Lcom/appodeal/ads/api/Session;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object p1

    return-object p1

    .line 929
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 780
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Session$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 780
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Session$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 780
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Session$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 780
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Session$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 780
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Session$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 780
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Session$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Session$Builder;
    .locals 0

    .line 1845
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Session$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 780
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Session$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 780
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Session$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 780
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Session$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setActiveSessionId(I)Lcom/appodeal/ads/api/Session$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1732
    iput p1, p0, Lcom/appodeal/ads/api/Session$Builder;->activeSessionId_:I

    .line 1733
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public setActiveSessionUptime(J)Lcom/appodeal/ads/api/Session$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1689
    iput-wide p1, p0, Lcom/appodeal/ads/api/Session$Builder;->activeSessionUptime_:J

    .line 1690
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public setAdStats(Lcom/appodeal/ads/api/AdStats$Builder;)Lcom/appodeal/ads/api/Session$Builder;
    .locals 1

    .line 1525
    iget-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->adStatsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1526
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats$Builder;->build()Lcom/appodeal/ads/api/AdStats;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Session$Builder;->adStats_:Lcom/appodeal/ads/api/AdStats;

    .line 1527
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    goto :goto_0

    .line 1529
    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats$Builder;->build()Lcom/appodeal/ads/api/AdStats;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAdStats(Lcom/appodeal/ads/api/AdStats;)Lcom/appodeal/ads/api/Session$Builder;
    .locals 1

    .line 1504
    iget-object v0, p0, Lcom/appodeal/ads/api/Session$Builder;->adStatsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1506
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1508
    iput-object p1, p0, Lcom/appodeal/ads/api/Session$Builder;->adStats_:Lcom/appodeal/ads/api/AdStats;

    .line 1509
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    goto :goto_0

    .line 1511
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAppSessionAverageLength(J)Lcom/appodeal/ads/api/Session$Builder;
    .locals 0

    .line 1775
    iput-wide p1, p0, Lcom/appodeal/ads/api/Session$Builder;->appSessionAverageLength_:J

    .line 1776
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public setExt(Ljava/lang/String;)Lcom/appodeal/ads/api/Session$Builder;
    .locals 0

    .line 1104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1107
    iput-object p1, p0, Lcom/appodeal/ads/api/Session$Builder;->ext_:Ljava/lang/Object;

    .line 1108
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public setExtBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Session$Builder;
    .locals 0

    .line 1137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1139
    invoke-static {p1}, Lcom/appodeal/ads/api/Session;->access$1900(Lcom/explorestack/protobuf/ByteString;)V

    .line 1141
    iput-object p1, p0, Lcom/appodeal/ads/api/Session$Builder;->ext_:Ljava/lang/Object;

    .line 1142
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Session$Builder;
    .locals 0

    .line 900
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Session$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 780
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Session$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 780
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Session$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMonotonicAppSessionAverageLength(J)Lcom/appodeal/ads/api/Session$Builder;
    .locals 0

    .line 1818
    iput-wide p1, p0, Lcom/appodeal/ads/api/Session$Builder;->monotonicAppSessionAverageLength_:J

    .line 1819
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public setMonotonicSessionUptime(J)Lcom/appodeal/ads/api/Session$Builder;
    .locals 0

    .line 1646
    iput-wide p1, p0, Lcom/appodeal/ads/api/Session$Builder;->monotonicSessionUptime_:J

    .line 1647
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Session$Builder;
    .locals 0

    .line 916
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Session$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 780
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Session$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 780
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Session$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSegmentId(I)Lcom/appodeal/ads/api/Session$Builder;
    .locals 0

    .line 1448
    iput p1, p0, Lcom/appodeal/ads/api/Session$Builder;->segmentId_:I

    .line 1449
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public setSessionId(J)Lcom/appodeal/ads/api/Session$Builder;
    .locals 0

    .line 1266
    iput-wide p1, p0, Lcom/appodeal/ads/api/Session$Builder;->sessionId_:J

    .line 1267
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public setSessionUptime(J)Lcom/appodeal/ads/api/Session$Builder;
    .locals 0

    .line 1405
    iput-wide p1, p0, Lcom/appodeal/ads/api/Session$Builder;->sessionUptime_:J

    .line 1406
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public setSessionUuid(Ljava/lang/String;)Lcom/appodeal/ads/api/Session$Builder;
    .locals 0

    .line 1339
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1342
    iput-object p1, p0, Lcom/appodeal/ads/api/Session$Builder;->sessionUuid_:Ljava/lang/Object;

    .line 1343
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public setSessionUuidBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Session$Builder;
    .locals 0

    .line 1372
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1374
    invoke-static {p1}, Lcom/appodeal/ads/api/Session;->access$2100(Lcom/explorestack/protobuf/ByteString;)V

    .line 1376
    iput-object p1, p0, Lcom/appodeal/ads/api/Session$Builder;->sessionUuid_:Ljava/lang/Object;

    .line 1377
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public setTest(Z)Lcom/appodeal/ads/api/Session$Builder;
    .locals 0

    .line 1031
    iput-boolean p1, p0, Lcom/appodeal/ads/api/Session$Builder;->test_:Z

    .line 1032
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/appodeal/ads/api/Session$Builder;
    .locals 0

    .line 1200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1203
    iput-object p1, p0, Lcom/appodeal/ads/api/Session$Builder;->token_:Ljava/lang/Object;

    .line 1204
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public setTokenBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Session$Builder;
    .locals 0

    .line 1233
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1235
    invoke-static {p1}, Lcom/appodeal/ads/api/Session;->access$2000(Lcom/explorestack/protobuf/ByteString;)V

    .line 1237
    iput-object p1, p0, Lcom/appodeal/ads/api/Session$Builder;->token_:Ljava/lang/Object;

    .line 1238
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Session$Builder;
    .locals 0

    .line 1839
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Session$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 780
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Session$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 780
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Session$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object p1

    return-object p1
.end method
