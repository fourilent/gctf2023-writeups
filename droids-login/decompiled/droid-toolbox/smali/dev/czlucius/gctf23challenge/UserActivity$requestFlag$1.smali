.class final Ldev/czlucius/gctf23challenge/UserActivity$requestFlag$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "UserActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/czlucius/gctf23challenge/UserActivity;->requestFlag(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "dev.czlucius.gctf23challenge.UserActivity"
    f = "UserActivity.kt"
    i = {}
    l = {
        0x82,
        0x9d
    }
    m = "requestFlag"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Ldev/czlucius/gctf23challenge/UserActivity;


# direct methods
.method constructor <init>(Ldev/czlucius/gctf23challenge/UserActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldev/czlucius/gctf23challenge/UserActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ldev/czlucius/gctf23challenge/UserActivity$requestFlag$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ldev/czlucius/gctf23challenge/UserActivity$requestFlag$1;->this$0:Ldev/czlucius/gctf23challenge/UserActivity;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ldev/czlucius/gctf23challenge/UserActivity$requestFlag$1;->result:Ljava/lang/Object;

    iget p1, p0, Ldev/czlucius/gctf23challenge/UserActivity$requestFlag$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ldev/czlucius/gctf23challenge/UserActivity$requestFlag$1;->label:I

    iget-object p1, p0, Ldev/czlucius/gctf23challenge/UserActivity$requestFlag$1;->this$0:Ldev/czlucius/gctf23challenge/UserActivity;

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0}, Ldev/czlucius/gctf23challenge/UserActivity;->requestFlag(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
