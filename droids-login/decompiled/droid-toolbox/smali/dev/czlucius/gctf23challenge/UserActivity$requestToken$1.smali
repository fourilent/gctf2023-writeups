.class final Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UserActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/czlucius/gctf23challenge/UserActivity;->requestToken()V
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
    c = "dev.czlucius.gctf23challenge.UserActivity$requestToken$1"
    f = "UserActivity.kt"
    i = {}
    l = {
        0xbc,
        0xc7
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $jsonBody:Lorg/json/JSONObject;

.field final synthetic $mediaType:Lokhttp3/MediaType;

.field final synthetic $okHttpClient:Lokhttp3/OkHttpClient;

.field label:I

.field final synthetic this$0:Ldev/czlucius/gctf23challenge/UserActivity;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lokhttp3/MediaType;Ldev/czlucius/gctf23challenge/UserActivity;Lokhttp3/OkHttpClient;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lokhttp3/MediaType;",
            "Ldev/czlucius/gctf23challenge/UserActivity;",
            "Lokhttp3/OkHttpClient;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;->$jsonBody:Lorg/json/JSONObject;

    iput-object p2, p0, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;->$mediaType:Lokhttp3/MediaType;

    iput-object p3, p0, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;->this$0:Ldev/czlucius/gctf23challenge/UserActivity;

    iput-object p4, p0, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;->$okHttpClient:Lokhttp3/OkHttpClient;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;

    iget-object v1, p0, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;->$jsonBody:Lorg/json/JSONObject;

    iget-object v2, p0, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;->$mediaType:Lokhttp3/MediaType;

    iget-object v3, p0, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;->this$0:Ldev/czlucius/gctf23challenge/UserActivity;

    iget-object v4, p0, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;->$okHttpClient:Lokhttp3/OkHttpClient;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;-><init>(Lorg/json/JSONObject;Lokhttp3/MediaType;Ldev/czlucius/gctf23challenge/UserActivity;Lokhttp3/OkHttpClient;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 187
    iget v1, p0, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 188
    sget-object p1, Lcom/google/firebase/ktx/Firebase;->INSTANCE:Lcom/google/firebase/ktx/Firebase;

    invoke-static {p1}, Lcom/google/firebase/messaging/ktx/MessagingKt;->getMessaging(Lcom/google/firebase/ktx/Firebase;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    const-string v1, "Firebase.messaging.token"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v3, p0, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/tasks/TasksKt;->await(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 187
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 189
    iget-object v1, p0, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;->$jsonBody:Lorg/json/JSONObject;

    const-string v3, "token"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    iget-object v1, p0, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;->$jsonBody:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "jsonBody.toString()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;->$mediaType:Lokhttp3/MediaType;

    invoke-virtual {p1, v1, v3}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;->this$0:Ldev/czlucius/gctf23challenge/UserActivity;

    invoke-static {v3}, Ldev/czlucius/gctf23challenge/UserActivity;->access$getHOST_URL(Ldev/czlucius/gctf23challenge/UserActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/sendAuthorizationToken"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 193
    invoke-virtual {v3, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 194
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 195
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 196
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 198
    :try_start_1
    iget-object v3, p0, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;->$okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v3, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 199
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1$1;

    iget-object v4, p0, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;->this$0:Ldev/czlucius/gctf23challenge/UserActivity;

    const/4 v5, 0x0

    invoke-direct {v3, v1, v4, v5}, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ldev/czlucius/gctf23challenge/UserActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;->label:I

    invoke-static {p1, v3, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_4

    return-object v0

    .line 212
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 207
    :goto_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 208
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
