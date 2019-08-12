---
to: src/state/reducers/reducerTodos/__snapshots__/test.ts.snap
---
// Jest Snapshot v1, https://goo.gl/fbAQLP

exports[`reducerTodos handles actionTodoAdd 1`] = `
Object {
  "entities": Object {
    "1": Object {
      "complete": true,
      "id": "1",
      "title": "Test Todo",
    },
  },
  "result": Array [
    "1",
  ],
}
`;

exports[`reducerTodos handles actionTodoRemove 1`] = `
Object {
  "entities": Object {
    "2": Object {
      "complete": true,
      "id": "2",
      "title": "Test Todo",
    },
  },
  "result": Array [
    "2",
  ],
}
`;

exports[`reducerTodos handles actionTodoUpdate 1`] = `
Object {
  "entities": Object {
    "1": Object {
      "complete": true,
      "id": "1",
      "title": "Test Todo",
    },
    "2": Object {
      "complete": true,
      "id": "2",
      "title": "I've changed",
    },
  },
  "result": Array [
    "1",
    "2",
  ],
}
`;
