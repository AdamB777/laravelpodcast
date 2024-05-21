<form method="POST" action="{{ route('comments.update', ['comment' => $comment->id]) }}">
    @csrf
    @method('PATCH')
    <input type="text" name="title" value="{{ $comment->tytul }}">
    <textarea name="comment">{{ $comment->tresc }}</textarea>
    <button type="submit">Zaktualizuj</button>
</form>
