.class final Lio/bidmachine/displays/DisplayAdObjectParams;
.super Lio/bidmachine/displays/IabAdObjectParams;
.source "DisplayAdObjectParams.java"


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/adcom/Ad;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lio/bidmachine/displays/IabAdObjectParams;-><init>(Lcom/explorestack/protobuf/adcom/Ad;)V

    .line 12
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getEventList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/displays/DisplayAdObjectParams;->prepareEvents(Ljava/util/List;)V

    return-void
.end method
