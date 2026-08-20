.class public final synthetic Le/a$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Le/a;

.field public final synthetic f$1:Lio/bidmachine/analytics/entity/Event;


# direct methods
.method public synthetic constructor <init>(Le/a;Lio/bidmachine/analytics/entity/Event;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a$$ExternalSyntheticLambda0;->f$0:Le/a;

    iput-object p2, p0, Le/a$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/analytics/entity/Event;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Le/a$$ExternalSyntheticLambda0;->f$0:Le/a;

    iget-object v1, p0, Le/a$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/analytics/entity/Event;

    invoke-static {v0, v1}, Le/a;->$r8$lambda$DfZ2WK-rrPWcdvjPDcEXVcVOhUo(Le/a;Lio/bidmachine/analytics/entity/Event;)V

    return-void
.end method
