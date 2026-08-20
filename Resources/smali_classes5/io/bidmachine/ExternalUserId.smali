.class public Lio/bidmachine/ExternalUserId;
.super Ljava/lang/Object;
.source "ExternalUserId.java"


# instance fields
.field private final sourceId:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/bidmachine/ExternalUserId;->sourceId:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lio/bidmachine/ExternalUserId;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSourceId()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/bidmachine/ExternalUserId;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lio/bidmachine/ExternalUserId;->value:Ljava/lang/String;

    return-object v0
.end method
