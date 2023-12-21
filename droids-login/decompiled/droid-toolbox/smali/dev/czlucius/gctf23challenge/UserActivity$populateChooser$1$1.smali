.class final Ldev/czlucius/gctf23challenge/UserActivity$populateChooser$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UserActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/czlucius/gctf23challenge/UserActivity$populateChooser$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineScope;",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "dev.czlucius.gctf23challenge.UserActivity$populateChooser$1$1"
    f = "UserActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $response:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lokhttp3/Response;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Ldev/czlucius/gctf23challenge/UserActivity;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ldev/czlucius/gctf23challenge/UserActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lokhttp3/Response;",
            ">;",
            "Ldev/czlucius/gctf23challenge/UserActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ldev/czlucius/gctf23challenge/UserActivity$populateChooser$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ldev/czlucius/gctf23challenge/UserActivity$populateChooser$1$1;->$response:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Ldev/czlucius/gctf23challenge/UserActivity$populateChooser$1$1;->this$0:Ldev/czlucius/gctf23challenge/UserActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Ldev/czlucius/gctf23challenge/UserActivity$populateChooser$1$1;

    iget-object v0, p0, Ldev/czlucius/gctf23challenge/UserActivity$populateChooser$1$1;->$response:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Ldev/czlucius/gctf23challenge/UserActivity$populateChooser$1$1;->this$0:Ldev/czlucius/gctf23challenge/UserActivity;

    invoke-direct {p1, v0, v1, p2}, Ldev/czlucius/gctf23challenge/UserActivity$populateChooser$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ldev/czlucius/gctf23challenge/UserActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ldev/czlucius/gctf23challenge/UserActivity$populateChooser$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ldev/czlucius/gctf23challenge/UserActivity$populateChooser$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Ldev/czlucius/gctf23challenge/UserActivity$populateChooser$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Ldev/czlucius/gctf23challenge/UserActivity$populateChooser$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 84
    iget v0, p0, Ldev/czlucius/gctf23challenge/UserActivity$populateChooser$1$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 85
    iget-object p1, p0, Ldev/czlucius/gctf23challenge/UserActivity$populateChooser$1$1;->$response:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lokhttp3/Response;

    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 86
    iget-object p1, p0, Ldev/czlucius/gctf23challenge/UserActivity$populateChooser$1$1;->$response:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lokhttp3/Response;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 87
    :goto_0
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Lorg/json/JSONArray;

    if-eqz v2, :cond_1

    check-cast p1, Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_2

    .line 89
    iget-object p1, p0, Ldev/czlucius/gctf23challenge/UserActivity$populateChooser$1$1;->this$0:Ldev/czlucius/gctf23challenge/UserActivity;

    check-cast p1, Landroid/content/Context;

    const-string v1, "Server lookup failed: JSON invalid"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 90
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 92
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    .line 96
    :goto_2
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 103
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "populateChooser: JSON object "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "UserActivity"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance p1, Landroid/widget/ArrayAdapter;

    .line 106
    iget-object v2, p0, Ldev/czlucius/gctf23challenge/UserActivity$populateChooser$1$1;->this$0:Ldev/czlucius/gctf23challenge/UserActivity;

    check-cast v2, Landroid/content/Context;

    const v3, 0x1090008

    .line 105
    invoke-direct {p1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v0, 0x1090009

    .line 110
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 113
    iget-object v0, p0, Ldev/czlucius/gctf23challenge/UserActivity$populateChooser$1$1;->this$0:Ldev/czlucius/gctf23challenge/UserActivity;

    invoke-static {v0}, Ldev/czlucius/gctf23challenge/UserActivity;->access$getBinding$p(Ldev/czlucius/gctf23challenge/UserActivity;)Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object v1, v0

    :goto_3
    iget-object v0, v1, Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;->content:Ldev/czlucius/gctf23challenge/databinding/ContentUserBinding;

    iget-object v0, v0, Ldev/czlucius/gctf23challenge/databinding/ContentUserBinding;->urlChooser:Landroid/widget/Spinner;

    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_4

    .line 115
    :cond_4
    iget-object p1, p0, Ldev/czlucius/gctf23challenge/UserActivity$populateChooser$1$1;->this$0:Ldev/czlucius/gctf23challenge/UserActivity;

    check-cast p1, Landroid/content/Context;

    const-string v1, "Server lookup failed"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 117
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 84
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
