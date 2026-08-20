.class Lio/bidmachine/AdResponseManager$1;
.super Ljava/lang/Object;
.source "AdResponseManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdResponseManager;->peek(Lio/bidmachine/AdRequestParameters;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/bidmachine/AdResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/AdResponseManager;


# direct methods
.method constructor <init>(Lio/bidmachine/AdResponseManager;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lio/bidmachine/AdResponseManager$1;->this$0:Lio/bidmachine/AdResponseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lio/bidmachine/AdResponse;Lio/bidmachine/AdResponse;)I
    .locals 2

    .line 190
    invoke-virtual {p1}, Lio/bidmachine/AdResponse;->getPrice()D

    move-result-wide v0

    invoke-virtual {p2}, Lio/bidmachine/AdResponse;->getPrice()D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 187
    check-cast p1, Lio/bidmachine/AdResponse;

    check-cast p2, Lio/bidmachine/AdResponse;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/AdResponseManager$1;->compare(Lio/bidmachine/AdResponse;Lio/bidmachine/AdResponse;)I

    move-result p1

    return p1
.end method
